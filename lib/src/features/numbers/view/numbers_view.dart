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
          return ListTile(title: Text(number.toString()));
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
