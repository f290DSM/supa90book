import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabook90/src/features/perguntas/data/repositories/respostas_repository_impl.dart';
import 'package:supabook90/src/features/perguntas/domain/resposta_pergunta_domain.dart';

part 'respostas_viewmodel.g.dart';

@riverpod
FutureOr<List<RespostaPerguntaDomain>> respostas( Ref ref, {required int idPergunta}) async {
  final response = await ref
      .watch(respostasRepositoryProvider)
      .findAnaswersByQuestionId(idPergunta);
  return response;
}
