import 'package:supabook90/src/features/perguntas/model/domain/resposta_domain.dart';

abstract interface class RespostasRepository {
  Future<List<RespostaDomain>> findByPerguntaId(int id);
}