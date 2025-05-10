import 'package:supabook90/src/features/pessoas/model/pessoa_model.dart';

abstract interface class PessoasRepository {
  Future<List<PessoaModel>> findAll();
  Future<void> add(PessoaModel pessoaModel);
}