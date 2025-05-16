import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabook90/src/core/providers/app_providers.dart';
import 'package:supabook90/src/features/perguntas/model/data/perguntas_repository.dart';
import 'package:supabook90/src/features/perguntas/model/domain/pergunta_domain.dart';

part 'perguntas_repository_impl.g.dart';

class PerguntasRepositoryImpl implements PerguntasRepository {
  final SupabaseClient supabase;

  PerguntasRepositoryImpl({required this.supabase});

  @override
  Future<void> add(PerguntaDomain pergunta) async {
    await supabase.from('pdm2_perguntas').insert(pergunta.toInsertJson());
  }

  @override
  Future<List<PerguntaDomain>> findAll() async {
    final response = await supabase.from('pdm2_perguntas').select();
    return [for (final p in response) PerguntaDomain.fromJson(p)];
  }
}

@riverpod
PerguntasRepository perguntasRepository(Ref ref) {
  return PerguntasRepositoryImpl(supabase: ref.watch(supabaseClientProvider));
}
