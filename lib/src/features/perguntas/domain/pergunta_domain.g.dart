// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pergunta_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PerguntaDomain _$PerguntaDomainFromJson(Map<String, dynamic> json) =>
    _PerguntaDomain(
      id: (json['id'] as num?)?.toInt(),
      texto: json['texto'] as String,
      ordem: (json['ordem'] as num).toInt(),
    );

Map<String, dynamic> _$PerguntaDomainToJson(_PerguntaDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'texto': instance.texto,
      'ordem': instance.ordem,
    };
