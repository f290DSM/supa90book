import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/perguntas/presentation/viewmodel/respostas_viewmodel.dart';

class RespostasView extends ConsumerWidget {
  const RespostasView({required this.idPergunta, super.key});

  final int idPergunta;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final respostas = ref.watch(respostasProvider(idPergunta: idPergunta));
    return Scaffold(
      appBar: AppBar(title: const Text('Respostas')),
      body: respostas.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final resposta = data[index];
              return ListTile(
                title: Text(resposta.resposta),
                subtitle: Text(resposta.pessoa.apelido),
              );
            },
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
