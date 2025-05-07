// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pessoa_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PessoaModel {

 int get id; String get nome; String get apelido;
/// Create a copy of PessoaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PessoaModelCopyWith<PessoaModel> get copyWith => _$PessoaModelCopyWithImpl<PessoaModel>(this as PessoaModel, _$identity);

  /// Serializes this PessoaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PessoaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.apelido, apelido) || other.apelido == apelido));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,apelido);

@override
String toString() {
  return 'PessoaModel(id: $id, nome: $nome, apelido: $apelido)';
}


}

/// @nodoc
abstract mixin class $PessoaModelCopyWith<$Res>  {
  factory $PessoaModelCopyWith(PessoaModel value, $Res Function(PessoaModel) _then) = _$PessoaModelCopyWithImpl;
@useResult
$Res call({
 int id, String nome, String apelido
});




}
/// @nodoc
class _$PessoaModelCopyWithImpl<$Res>
    implements $PessoaModelCopyWith<$Res> {
  _$PessoaModelCopyWithImpl(this._self, this._then);

  final PessoaModel _self;
  final $Res Function(PessoaModel) _then;

/// Create a copy of PessoaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nome = null,Object? apelido = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,apelido: null == apelido ? _self.apelido : apelido // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PessoaModel implements PessoaModel {
   _PessoaModel({required this.id, required this.nome, required this.apelido});
  factory _PessoaModel.fromJson(Map<String, dynamic> json) => _$PessoaModelFromJson(json);

@override final  int id;
@override final  String nome;
@override final  String apelido;

/// Create a copy of PessoaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PessoaModelCopyWith<_PessoaModel> get copyWith => __$PessoaModelCopyWithImpl<_PessoaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PessoaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PessoaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.apelido, apelido) || other.apelido == apelido));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,apelido);

@override
String toString() {
  return 'PessoaModel(id: $id, nome: $nome, apelido: $apelido)';
}


}

/// @nodoc
abstract mixin class _$PessoaModelCopyWith<$Res> implements $PessoaModelCopyWith<$Res> {
  factory _$PessoaModelCopyWith(_PessoaModel value, $Res Function(_PessoaModel) _then) = __$PessoaModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String nome, String apelido
});




}
/// @nodoc
class __$PessoaModelCopyWithImpl<$Res>
    implements _$PessoaModelCopyWith<$Res> {
  __$PessoaModelCopyWithImpl(this._self, this._then);

  final _PessoaModel _self;
  final $Res Function(_PessoaModel) _then;

/// Create a copy of PessoaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nome = null,Object? apelido = null,}) {
  return _then(_PessoaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,apelido: null == apelido ? _self.apelido : apelido // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
