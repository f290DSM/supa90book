import 'package:freezed_annotation/freezed_annotation.dart';

part 'pessoa_model.freezed.dart';
part 'pessoa_model.g.dart';

@freezed
abstract class PessoaModel with _$PessoaModel {
  factory PessoaModel(
    {
      required int id,
      required String nome,
      required String apelido
    }
  ) = _PessoaModel;

  factory PessoaModel.fromJson(Map<String, dynamic> json) => _$PessoaModelFromJson(json);
}