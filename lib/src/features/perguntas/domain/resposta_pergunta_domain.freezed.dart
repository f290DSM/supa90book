// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resposta_pergunta_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RespostaPerguntaDomain {

 String get resposta;@JsonKey(name: 'pdm2_pessoas') PessoaModel get pessoa;@JsonKey(name: 'pdm2_perguntas') PerguntaDomain get pergunta;
/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RespostaPerguntaDomainCopyWith<RespostaPerguntaDomain> get copyWith => _$RespostaPerguntaDomainCopyWithImpl<RespostaPerguntaDomain>(this as RespostaPerguntaDomain, _$identity);

  /// Serializes this RespostaPerguntaDomain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RespostaPerguntaDomain&&(identical(other.resposta, resposta) || other.resposta == resposta)&&(identical(other.pessoa, pessoa) || other.pessoa == pessoa)&&(identical(other.pergunta, pergunta) || other.pergunta == pergunta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resposta,pessoa,pergunta);

@override
String toString() {
  return 'RespostaPerguntaDomain(resposta: $resposta, pessoa: $pessoa, pergunta: $pergunta)';
}


}

/// @nodoc
abstract mixin class $RespostaPerguntaDomainCopyWith<$Res>  {
  factory $RespostaPerguntaDomainCopyWith(RespostaPerguntaDomain value, $Res Function(RespostaPerguntaDomain) _then) = _$RespostaPerguntaDomainCopyWithImpl;
@useResult
$Res call({
 String resposta,@JsonKey(name: 'pdm2_pessoas') PessoaModel pessoa,@JsonKey(name: 'pdm2_perguntas') PerguntaDomain pergunta
});


$PessoaModelCopyWith<$Res> get pessoa;$PerguntaDomainCopyWith<$Res> get pergunta;

}
/// @nodoc
class _$RespostaPerguntaDomainCopyWithImpl<$Res>
    implements $RespostaPerguntaDomainCopyWith<$Res> {
  _$RespostaPerguntaDomainCopyWithImpl(this._self, this._then);

  final RespostaPerguntaDomain _self;
  final $Res Function(RespostaPerguntaDomain) _then;

/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resposta = null,Object? pessoa = null,Object? pergunta = null,}) {
  return _then(_self.copyWith(
resposta: null == resposta ? _self.resposta : resposta // ignore: cast_nullable_to_non_nullable
as String,pessoa: null == pessoa ? _self.pessoa : pessoa // ignore: cast_nullable_to_non_nullable
as PessoaModel,pergunta: null == pergunta ? _self.pergunta : pergunta // ignore: cast_nullable_to_non_nullable
as PerguntaDomain,
  ));
}
/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PessoaModelCopyWith<$Res> get pessoa {
  
  return $PessoaModelCopyWith<$Res>(_self.pessoa, (value) {
    return _then(_self.copyWith(pessoa: value));
  });
}/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerguntaDomainCopyWith<$Res> get pergunta {
  
  return $PerguntaDomainCopyWith<$Res>(_self.pergunta, (value) {
    return _then(_self.copyWith(pergunta: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RespostaPerguntaDomain implements RespostaPerguntaDomain {
   _RespostaPerguntaDomain({required this.resposta, @JsonKey(name: 'pdm2_pessoas') required this.pessoa, @JsonKey(name: 'pdm2_perguntas') required this.pergunta});
  factory _RespostaPerguntaDomain.fromJson(Map<String, dynamic> json) => _$RespostaPerguntaDomainFromJson(json);

@override final  String resposta;
@override@JsonKey(name: 'pdm2_pessoas') final  PessoaModel pessoa;
@override@JsonKey(name: 'pdm2_perguntas') final  PerguntaDomain pergunta;

/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RespostaPerguntaDomainCopyWith<_RespostaPerguntaDomain> get copyWith => __$RespostaPerguntaDomainCopyWithImpl<_RespostaPerguntaDomain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RespostaPerguntaDomainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RespostaPerguntaDomain&&(identical(other.resposta, resposta) || other.resposta == resposta)&&(identical(other.pessoa, pessoa) || other.pessoa == pessoa)&&(identical(other.pergunta, pergunta) || other.pergunta == pergunta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resposta,pessoa,pergunta);

@override
String toString() {
  return 'RespostaPerguntaDomain(resposta: $resposta, pessoa: $pessoa, pergunta: $pergunta)';
}


}

/// @nodoc
abstract mixin class _$RespostaPerguntaDomainCopyWith<$Res> implements $RespostaPerguntaDomainCopyWith<$Res> {
  factory _$RespostaPerguntaDomainCopyWith(_RespostaPerguntaDomain value, $Res Function(_RespostaPerguntaDomain) _then) = __$RespostaPerguntaDomainCopyWithImpl;
@override @useResult
$Res call({
 String resposta,@JsonKey(name: 'pdm2_pessoas') PessoaModel pessoa,@JsonKey(name: 'pdm2_perguntas') PerguntaDomain pergunta
});


@override $PessoaModelCopyWith<$Res> get pessoa;@override $PerguntaDomainCopyWith<$Res> get pergunta;

}
/// @nodoc
class __$RespostaPerguntaDomainCopyWithImpl<$Res>
    implements _$RespostaPerguntaDomainCopyWith<$Res> {
  __$RespostaPerguntaDomainCopyWithImpl(this._self, this._then);

  final _RespostaPerguntaDomain _self;
  final $Res Function(_RespostaPerguntaDomain) _then;

/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resposta = null,Object? pessoa = null,Object? pergunta = null,}) {
  return _then(_RespostaPerguntaDomain(
resposta: null == resposta ? _self.resposta : resposta // ignore: cast_nullable_to_non_nullable
as String,pessoa: null == pessoa ? _self.pessoa : pessoa // ignore: cast_nullable_to_non_nullable
as PessoaModel,pergunta: null == pergunta ? _self.pergunta : pergunta // ignore: cast_nullable_to_non_nullable
as PerguntaDomain,
  ));
}

/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PessoaModelCopyWith<$Res> get pessoa {
  
  return $PessoaModelCopyWith<$Res>(_self.pessoa, (value) {
    return _then(_self.copyWith(pessoa: value));
  });
}/// Create a copy of RespostaPerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PerguntaDomainCopyWith<$Res> get pergunta {
  
  return $PerguntaDomainCopyWith<$Res>(_self.pergunta, (value) {
    return _then(_self.copyWith(pergunta: value));
  });
}
}

// dart format on
