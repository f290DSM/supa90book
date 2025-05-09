import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/pessoas/viewmodel/pessoas_viewmodel.dart';

class PessoasView extends ConsumerWidget {
  const PessoasView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pessoas = ref.watch(pessoasViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Pessoas')),
      body: pessoas.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var pessoa = data[index];
              return ListTile(
                title: Text(pessoa.nome),
                subtitle: Text(pessoa.apelido),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
