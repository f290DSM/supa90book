// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resposta_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RespostaDomain _$RespostaDomainFromJson(Map<String, dynamic> json) =>
    _RespostaDomain(
      resposta: json['resposta'] as String,
      pergunta: PerguntaDomain.fromJson(
        json['pdm2_perguntas'] as Map<String, dynamic>,
      ),
      pessoa: PessoaModel.fromJson(
        json['pdm2_pessoas'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$RespostaDomainToJson(_RespostaDomain instance) =>
    <String, dynamic>{
      'resposta': instance.resposta,
      'pdm2_perguntas': instance.pergunta,
      'pdm2_pessoas': instance.pessoa,
    };
