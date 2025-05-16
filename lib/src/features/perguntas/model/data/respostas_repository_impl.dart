import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabook90/src/core/providers/app_providers.dart';
import 'package:supabook90/src/features/perguntas/model/data/respostas_repository.dart';
import 'package:supabook90/src/features/perguntas/model/domain/resposta_domain.dart';

part 'respostas_repository_impl.g.dart';

class RespostasRepositoryImpl implements RespostasRepository {
  final SupabaseClient supabase;

  RespostasRepositoryImpl({required this.supabase});

  @override
  Future<List<RespostaDomain>> findByPerguntaId(int id) async {
    final response = await supabase
        .from('pdm2_respostas')
        .select('*, pdm2_perguntas!inner(*), pdm2_pessoas!inner(*)')
        .eq('pdm2_perguntas.id', id);
    return [for (final r in response) RespostaDomain.fromJson(r)];
  }
}

/**
 * select 
  r.resposta,
  ps.nome,
  ps.apelido,
  r.created_at
from 
  respostas r
inner join perguntas p on 
  p.id = r.pergunta_id
inner join pessoas ps on 
  ps.id = r.pessoa_id
where p.id = 1;
 */

@riverpod
RespostasRepository respostasRepository(Ref ref) {
  return RespostasRepositoryImpl(supabase: ref.watch(supabaseClientProvider));
}

@riverpod
FutureOr<List<RespostaDomain>> respostas(Ref ref, {required int id}) async {
  return await ref.watch(respostasRepositoryProvider).findByPerguntaId(id);
}