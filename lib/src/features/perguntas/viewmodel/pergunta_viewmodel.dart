import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabook90/src/features/perguntas/model/data/perguntas_repository_impl.dart';
import 'package:supabook90/src/features/perguntas/model/domain/pergunta_domain.dart';

part 'pergunta_viewmodel.g.dart';

@riverpod
class PerguntaViewModel extends _$PerguntaViewModel {

  @override
  Future<List<PerguntaDomain>> build() async {
    return await ref.watch(perguntasRepositoryProvider).findAll();
  }

  Future<void> add(PerguntaDomain perguntaDomain) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(perguntasRepositoryProvider).add(perguntaDomain);
      return ref.read(perguntasRepositoryProvider).findAll();
    });
  }
}