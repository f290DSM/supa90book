// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pessoa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PessoaModel _$PessoaModelFromJson(Map<String, dynamic> json) => _PessoaModel(
  id: (json['id'] as num?)?.toInt(),
  nome: json['nome'] as String,
  apelido: json['apelido'] as String,
);

Map<String, dynamic> _$PessoaModelToJson(_PessoaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'apelido': instance.apelido,
    };
