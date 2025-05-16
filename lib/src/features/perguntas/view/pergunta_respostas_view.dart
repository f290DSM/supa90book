import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/perguntas/model/data/respostas_repository_impl.dart';
import 'package:supabook90/src/features/perguntas/model/domain/pergunta_domain.dart';

class RespostasPerguntasView extends ConsumerWidget {
  const RespostasPerguntasView({super.key, required this.pergunta});

  final PerguntaDomain pergunta;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var respostas = ref.watch(respostasProvider(id: pergunta.id!));

    return Scaffold(
      appBar: AppBar(title: Text('Respostas')),
      body: Column(
        children: [
          Card(
            child: Stack(
              children: [
                Positioned(
                  left: -25,
                  top: -35,
                  child: Icon(Icons.format_quote, size: 150, color: Theme.of(context).colorScheme.primary.withAlpha(75),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  child: Text(
                    pergunta.texto,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          respostas.when(
            data: (data) {
              return Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Card(
                      child: ListTile(
                        title: Text(item.resposta),
                        subtitle: Text(item.pessoa.apelido),
                      ),
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) => Text('Error'),
            loading: () => CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
