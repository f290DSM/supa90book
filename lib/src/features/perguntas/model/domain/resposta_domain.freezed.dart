// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resposta_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RespostaDomain {

 String get resposta;@JsonKey(name: 'pdm2_perguntas') PerguntaDomain get pergunta;@JsonKey(name: 'pdm2_pessoas') PessoaModel get pessoa;
/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RespostaDomainCopyWith<RespostaDomain> get copyWith => _$RespostaDomainCopyWithImpl<RespostaDomain>(this as RespostaDomain, _$identity);

  /// Serializes this RespostaDomain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RespostaDomain&&(identical(other.resposta, resposta) || other.resposta == resposta)&&(identical(other.pergunta, pergunta) || other.pergunta == pergunta)&&(identical(other.pessoa, pessoa) || other.pessoa == pessoa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resposta,pergunta,pessoa);

@override
String toString() {
  return 'RespostaDomain(resposta: $resposta, pergunta: $pergunta, pessoa: $pessoa)';
}


}

/// @nodoc
abstract mixin class $RespostaDomainCopyWith<$Res>  {
  factory $RespostaDomainCopyWith(RespostaDomain value, $Res Function(RespostaDomain) _then) = _$RespostaDomainCopyWithImpl;
@useResult
$Res call({
 String resposta,@JsonKey(name: 'pdm2_perguntas') PerguntaDomain pergunta,@JsonKey(name: 'pdm2_pessoas') PessoaModel pessoa
});


$PerguntaDomainCopyWith<$Res> get pergunta;$PessoaModelCopyWith<$Res> get pessoa;

}
/// @nodoc
class _$RespostaDomainCopyWithImpl<$Res>
    implements $RespostaDomainCopyWith<$Res> {
  _$RespostaDomainCopyWithImpl(this._self, this._then);

  final RespostaDomain _self;
  final $Res Function(RespostaDomain) _then;

/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resposta = null,Object? pergunta = null,Object? pessoa = null,}) {
  return _then(_self.copyWith(
resposta: null == resposta ? _self.resposta : resposta // ignore: cast_nullable_to_non_nullable
as String,pergunta: null == pergunta ? _self.pergunta : pergunta // ignore: cast_nullable_to_non_nullable
as PerguntaDomain,pessoa: null == pessoa ? _self.pessoa : pessoa // ignore: cast_nullable_to_non_nullable
as PessoaModel,
  ));
}
/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerguntaDomainCopyWith<$Res> get pergunta {
  
  return $PerguntaDomainCopyWith<$Res>(_self.pergunta, (value) {
    return _then(_self.copyWith(pergunta: value));
  });
}/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PessoaModelCopyWith<$Res> get pessoa {
  
  return $PessoaModelCopyWith<$Res>(_self.pessoa, (value) {
    return _then(_self.copyWith(pessoa: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RespostaDomain implements RespostaDomain {
  const _RespostaDomain({required this.resposta, @JsonKey(name: 'pdm2_perguntas') required this.pergunta, @JsonKey(name: 'pdm2_pessoas') required this.pessoa});
  factory _RespostaDomain.fromJson(Map<String, dynamic> json) => _$RespostaDomainFromJson(json);

@override final  String resposta;
@override@JsonKey(name: 'pdm2_perguntas') final  PerguntaDomain pergunta;
@override@JsonKey(name: 'pdm2_pessoas') final  PessoaModel pessoa;

/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RespostaDomainCopyWith<_RespostaDomain> get copyWith => __$RespostaDomainCopyWithImpl<_RespostaDomain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RespostaDomainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RespostaDomain&&(identical(other.resposta, resposta) || other.resposta == resposta)&&(identical(other.pergunta, pergunta) || other.pergunta == pergunta)&&(identical(other.pessoa, pessoa) || other.pessoa == pessoa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resposta,pergunta,pessoa);

@override
String toString() {
  return 'RespostaDomain(resposta: $resposta, pergunta: $pergunta, pessoa: $pessoa)';
}


}

/// @nodoc
abstract mixin class _$RespostaDomainCopyWith<$Res> implements $RespostaDomainCopyWith<$Res> {
  factory _$RespostaDomainCopyWith(_RespostaDomain value, $Res Function(_RespostaDomain) _then) = __$RespostaDomainCopyWithImpl;
@override @useResult
$Res call({
 String resposta,@JsonKey(name: 'pdm2_perguntas') PerguntaDomain pergunta,@JsonKey(name: 'pdm2_pessoas') PessoaModel pessoa
});


@override $PerguntaDomainCopyWith<$Res> get pergunta;@override $PessoaModelCopyWith<$Res> get pessoa;

}
/// @nodoc
class __$RespostaDomainCopyWithImpl<$Res>
    implements _$RespostaDomainCopyWith<$Res> {
  __$RespostaDomainCopyWithImpl(this._self, this._then);

  final _RespostaDomain _self;
  final $Res Function(_RespostaDomain) _then;

/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resposta = null,Object? pergunta = null,Object? pessoa = null,}) {
  return _then(_RespostaDomain(
resposta: null == resposta ? _self.resposta : resposta // ignore: cast_nullable_to_non_nullable
as String,pergunta: null == pergunta ? _self.pergunta : pergunta // ignore: cast_nullable_to_non_nullable
as PerguntaDomain,pessoa: null == pessoa ? _self.pessoa : pessoa // ignore: cast_nullable_to_non_nullable
as PessoaModel,
  ));
}

/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerguntaDomainCopyWith<$Res> get pergunta {
  
  return $PerguntaDomainCopyWith<$Res>(_self.pergunta, (value) {
    return _then(_self.copyWith(pergunta: value));
  });
}/// Create a copy of RespostaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PessoaModelCopyWith<$Res> get pessoa {
  
  return $PessoaModelCopyWith<$Res>(_self.pessoa, (value) {
    return _then(_self.copyWith(pessoa: value));
  });
}
}

// dart format on
