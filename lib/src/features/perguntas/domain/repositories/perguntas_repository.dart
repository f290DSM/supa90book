import 'package:supabook90/src/features/perguntas/domain/pergunta_domain.dart';

abstract interface class PerguntasRepository {
  Future<List<PerguntaDomain>> findAll();
}