import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/numbers/viewmodel/numbers_viewmodel.dart';

class NumbersView extends ConsumerWidget {
  const NumbersView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var numbers = ref.watch(numbersViewmodelProvider);
    var viewmodel = ref.read(numbersViewmodelProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('Numbers')),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          int number = numbers[index];
          return Dismissible(
            key: Key(number.toString()),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {
              viewmodel.remove(number);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Number $number removed'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            background: Container(
              color: Colors.red,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.delete, color: Colors.white),
              ),
            ),
            child: ListTile(
              title: Text(
                number.toString(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          viewmodel.add(Random().nextInt(101));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
