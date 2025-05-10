import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabook90/src/features/pessoas/model/pessoa_model.dart';
import 'package:supabook90/src/features/pessoas/viewmodel/pessoas_viewmodel.dart';

class PessoasView extends ConsumerWidget {
  const PessoasView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pessoas = ref.watch(pessoasViewModelProvider);
    final viewModel = ref.watch(pessoasViewModelProvider.notifier);

    final nomeController = TextEditingController();
    final apelidoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Pessoas')),
      body: pessoas.when(
        data: (data) {
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var pessoa = data[index];
              return ListTile(
                leading: CircleAvatar(child: Text(pessoa.id.toString())),
                title: Text(pessoa.nome),
                subtitle: Text(pessoa.apelido),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
          );
        },
        error: (error, stackTrace) {
          return Center(child: Text(error.toString()));
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextField(
                          controller: nomeController,
                          decoration: InputDecoration(
                            labelText: 'Nome',
                            filled: true,
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          controller: apelidoController,
                          decoration: InputDecoration(
                            labelText: 'Apelido',
                            filled: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: SizedBox(
                            height: 60,
                            child: FilledButton(
                              onPressed: () async {
                                final pessoa = PessoaModel(
                                  id: 0,
                                  nome: nomeController.text,
                                  apelido: apelidoController.text,
                                );
                                await viewModel.addPessoa(pessoa);
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Pessoa adicionada com sucesso!',
                                      ),
                                    ),
                                  );
                                  Navigator.pop(context);
                                }
                              },
                              child: Text('SALVAR'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
