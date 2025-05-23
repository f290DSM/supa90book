import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabook90/src/core/providers/app_providers.dart';
import 'package:supabook90/src/features/perguntas/domain/repositories/respostas_repository.dart';
import 'package:supabook90/src/features/perguntas/domain/resposta_pergunta_domain.dart';

part 'respostas_repository_impl.g.dart';

class RespostasRepositoryImpl implements RespostasRepository {
  final SupabaseClient supabase;

  RespostasRepositoryImpl({required this.supabase});

  @override
  Future<List<RespostaPerguntaDomain>> findAnaswersByQuestionId(int id) async {
    var response = await supabase
        .from('pdm2_respostas')
        .select('''
        resposta,
        pdm2_perguntas!inner(*),
        pdm2_pessoas!inner(*)
      ''')
        .eq('pdm2_perguntas.id', id);

    return [for (final json in response) RespostaPerguntaDomain.fromJson(json)];
  }
}

@riverpod
RespostasRepository respostasRepository(Ref ref) {
  return RespostasRepositoryImpl(supabase: ref.watch(supabaseClientProvider));
}
