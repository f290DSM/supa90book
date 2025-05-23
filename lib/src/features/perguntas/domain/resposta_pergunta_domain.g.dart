// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resposta_pergunta_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RespostaPerguntaDomain _$RespostaPerguntaDomainFromJson(
  Map<String, dynamic> json,
) => _RespostaPerguntaDomain(
  resposta: json['resposta'] as String,
  pessoa: PessoaModel.fromJson(json['pdm2_pessoas'] as Map<String, dynamic>),
  pergunta: PerguntaDomain.fromJson(
    json['pdm2_perguntas'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$RespostaPerguntaDomainToJson(
  _RespostaPerguntaDomain instance,
) => <String, dynamic>{
  'resposta': instance.resposta,
  'pdm2_pessoas': instance.pessoa,
  'pdm2_perguntas': instance.pergunta,
};
