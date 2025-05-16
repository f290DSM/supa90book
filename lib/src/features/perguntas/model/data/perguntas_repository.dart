import 'package:supabook90/src/features/perguntas/model/domain/pergunta_domain.dart';

abstract interface class PerguntasRepository {
  Future<List<PerguntaDomain>> findAll();
  Future<void> add(PerguntaDomain pergunta);
}