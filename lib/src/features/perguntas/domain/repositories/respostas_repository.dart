import 'package:supabook90/src/features/perguntas/domain/resposta_pergunta_domain.dart';

abstract interface class RespostasRepository {
  Future<List<RespostaPerguntaDomain>> findAnaswersByQuestionId(int id);
}