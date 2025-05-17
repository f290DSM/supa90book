import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabook90/src/core/providers/app_providers.dart';
import 'package:supabook90/src/features/perguntas/domain/pergunta_domain.dart';
import 'package:supabook90/src/features/perguntas/domain/repositories/perguntas_repository.dart';

part 'perguntas_repository_impl.g.dart';

class PerguntasRepositoryImpl implements PerguntasRepository {
  final SupabaseClient supabase;

  PerguntasRepositoryImpl({required this.supabase});

  @override
  Future<List<PerguntaDomain>> findAll() async {
    var response = await supabase.from('pdm2_perguntas').select();
    return [for (final json in response) PerguntaDomain.fromJson(json)];
  }
}

@riverpod
PerguntasRepository perguntas(Ref ref) {
  return PerguntasRepositoryImpl(supabase: ref.watch(supabaseClientProvider));
}
