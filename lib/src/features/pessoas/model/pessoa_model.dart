import 'package:freezed_annotation/freezed_annotation.dart';

part 'pessoa_model.freezed.dart';
part 'pessoa_model.g.dart';

@freezed
abstract class PessoaModel with _$PessoaModel {
  factory PessoaModel(
    {
      int? id,
      required String nome,
      required String apelido
    }
  ) = _PessoaModel;

  factory PessoaModel.fromJson(Map<String, dynamic> json) => _$PessoaModelFromJson(json);
}

extension PessoaModelExtension on PessoaModel {
  Map<String, dynamic> toInsertJson() {
    return {
      'nome': nome,
      'apelido': apelido
    };
  }
}