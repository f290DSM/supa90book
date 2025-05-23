import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/perguntas/domain/pergunta_domain.dart';
import 'package:supabook90/src/features/perguntas/presentation/view/resposta_view.dart';
import 'package:supabook90/src/features/perguntas/presentation/viewmodel/perguntas_viewmodel.dart';

class PerguntasView extends ConsumerWidget {
  const PerguntasView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final perguntas = ref.watch(perguntasViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Perguntas')),
      body: perguntas.when(
        data: (data) {
          return _PerguntasWidget(perguntas: data);
        },
        error: (error, stackTrace) {
          return Center(
            child: Text('Erro ao carregar perguntas: ${error.toString()}'),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _PerguntasWidget extends StatelessWidget {
  const _PerguntasWidget({required this.perguntas});

  final List<PerguntaDomain> perguntas;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: perguntas.length,
      itemBuilder: (context, index) {
        final pergunta = perguntas[index];
        return ListTile(
          leading: CircleAvatar(child: Text(pergunta.id.toString())),
          title: Text(pergunta.texto),
          onTap:
              () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RespostasView(idPergunta: pergunta.id!),
                ),
              ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
