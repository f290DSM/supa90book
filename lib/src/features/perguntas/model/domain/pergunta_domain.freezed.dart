// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pergunta_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PerguntaDomain {

 int? get id; String get texto; int get ordem;
/// Create a copy of PerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerguntaDomainCopyWith<PerguntaDomain> get copyWith => _$PerguntaDomainCopyWithImpl<PerguntaDomain>(this as PerguntaDomain, _$identity);

  /// Serializes this PerguntaDomain to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerguntaDomain&&(identical(other.id, id) || other.id == id)&&(identical(other.texto, texto) || other.texto == texto)&&(identical(other.ordem, ordem) || other.ordem == ordem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,texto,ordem);

@override
String toString() {
  return 'PerguntaDomain(id: $id, texto: $texto, ordem: $ordem)';
}


}

/// @nodoc
abstract mixin class $PerguntaDomainCopyWith<$Res>  {
  factory $PerguntaDomainCopyWith(PerguntaDomain value, $Res Function(PerguntaDomain) _then) = _$PerguntaDomainCopyWithImpl;
@useResult
$Res call({
 int? id, String texto, int ordem
});




}
/// @nodoc
class _$PerguntaDomainCopyWithImpl<$Res>
    implements $PerguntaDomainCopyWith<$Res> {
  _$PerguntaDomainCopyWithImpl(this._self, this._then);

  final PerguntaDomain _self;
  final $Res Function(PerguntaDomain) _then;

/// Create a copy of PerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? texto = null,Object? ordem = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,texto: null == texto ? _self.texto : texto // ignore: cast_nullable_to_non_nullable
as String,ordem: null == ordem ? _self.ordem : ordem // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PerguntaDomain implements PerguntaDomain {
   _PerguntaDomain({this.id, required this.texto, required this.ordem});
  factory _PerguntaDomain.fromJson(Map<String, dynamic> json) => _$PerguntaDomainFromJson(json);

@override final  int? id;
@override final  String texto;
@override final  int ordem;

/// Create a copy of PerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerguntaDomainCopyWith<_PerguntaDomain> get copyWith => __$PerguntaDomainCopyWithImpl<_PerguntaDomain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerguntaDomainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerguntaDomain&&(identical(other.id, id) || other.id == id)&&(identical(other.texto, texto) || other.texto == texto)&&(identical(other.ordem, ordem) || other.ordem == ordem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,texto,ordem);

@override
String toString() {
  return 'PerguntaDomain(id: $id, texto: $texto, ordem: $ordem)';
}


}

/// @nodoc
abstract mixin class _$PerguntaDomainCopyWith<$Res> implements $PerguntaDomainCopyWith<$Res> {
  factory _$PerguntaDomainCopyWith(_PerguntaDomain value, $Res Function(_PerguntaDomain) _then) = __$PerguntaDomainCopyWithImpl;
@override @useResult
$Res call({
 int? id, String texto, int ordem
});




}
/// @nodoc
class __$PerguntaDomainCopyWithImpl<$Res>
    implements _$PerguntaDomainCopyWith<$Res> {
  __$PerguntaDomainCopyWithImpl(this._self, this._then);

  final _PerguntaDomain _self;
  final $Res Function(_PerguntaDomain) _then;

/// Create a copy of PerguntaDomain
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? texto = null,Object? ordem = null,}) {
  return _then(_PerguntaDomain(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,texto: null == texto ? _self.texto : texto // ignore: cast_nullable_to_non_nullable
as String,ordem: null == ordem ? _self.ordem : ordem // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
