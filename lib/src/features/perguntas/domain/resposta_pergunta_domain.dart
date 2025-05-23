import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:supabook90/src/features/perguntas/domain/pergunta_domain.dart';
import 'package:supabook90/src/features/pessoas/model/pessoa_model.dart';

part 'resposta_pergunta_domain.freezed.dart';
part 'resposta_pergunta_domain.g.dart';

@freezed
abstract class RespostaPerguntaDomain with _$RespostaPerguntaDomain {
  factory RespostaPerguntaDomain({
    required String resposta,
    @JsonKey(name: 'pdm2_pessoas') required PessoaModel pessoa,
    @JsonKey(name: 'pdm2_perguntas') required PerguntaDomain pergunta,
  }) = _RespostaPerguntaDomain;

  factory RespostaPerguntaDomain.fromJson(Map<String, dynamic> json) =>
      _$RespostaPerguntaDomainFromJson(json);
}
