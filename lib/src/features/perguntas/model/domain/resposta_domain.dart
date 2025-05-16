import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabook90/src/features/perguntas/model/domain/pergunta_domain.dart';
import 'package:supabook90/src/features/pessoas/model/pessoa_model.dart';

part 'resposta_domain.freezed.dart';
part 'resposta_domain.g.dart';

@freezed
abstract class RespostaDomain with _$RespostaDomain {
  const factory RespostaDomain(
    {
      required String resposta,
      @JsonKey(name: 'pdm2_perguntas') required PerguntaDomain pergunta,
      @JsonKey(name: 'pdm2_pessoas') required PessoaModel pessoa
    }
  ) = _RespostaDomain;

  factory RespostaDomain.fromJson(Map<String, dynamic> json) => _$RespostaDomainFromJson(json);
}
