import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabook90/src/core/providers/app_providers.dart';
import 'package:supabook90/src/features/pessoas/model/pessoa_model.dart';

part 'pessoas_viewmodel.g.dart';

@riverpod
class PessoasViewModel extends _$PessoasViewModel {
  @override
  Future<List<PessoaModel>> build() async {
    state = AsyncLoading();
    var response =
        await ref.watch(supabaseClientProvider)
        .from('pdm2_pessoas')
        .select();

    return [for (final p in response) PessoaModel.fromJson(p)];
  }

  Future<void> addPessoa(PessoaModel pessoa) async {
    state = AsyncLoading();
    await ref.watch(supabaseClientProvider)
        .from('pdm2_pessoas')
        .insert(pessoa.toInsertJson());
    state = AsyncData(await build());
  }
}
