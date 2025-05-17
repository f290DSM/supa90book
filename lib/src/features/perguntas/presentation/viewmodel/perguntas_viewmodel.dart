import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabook90/src/features/perguntas/data/repositories/perguntas_repository_impl.dart';
import 'package:supabook90/src/features/perguntas/domain/pergunta_domain.dart';

part 'perguntas_viewmodel.g.dart';

@riverpod
class PerguntasViewModel extends _$PerguntasViewModel {
  @override
  Future<List<PerguntaDomain>> build() async {
    return await ref.watch(perguntasProvider).findAll();
  }

}