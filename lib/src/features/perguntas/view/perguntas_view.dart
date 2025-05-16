import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/perguntas/view/pergunta_respostas_view.dart';
import 'package:supabook90/src/features/perguntas/viewmodel/pergunta_viewmodel.dart';

class PerguntasView extends ConsumerWidget {
  const PerguntasView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var perguntas = ref.watch(perguntaViewModelProvider);
    final viewModel = ref.watch(perguntaViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('Perguntas')),
      body: perguntas.when(
        data: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final pergunta = data[index];
              return ListTile(
                leading: CircleAvatar(child: Text(pergunta.ordem.toString())),
                title: Text(pergunta.texto),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RespostasPerguntasView(pergunta: pergunta)));
                },
              );
            }, separatorBuilder: (BuildContext context, int index) => Divider(),
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
