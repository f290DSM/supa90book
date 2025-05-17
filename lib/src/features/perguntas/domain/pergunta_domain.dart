import 'package:freezed_annotation/freezed_annotation.dart';

part 'pergunta_domain.freezed.dart';
part 'pergunta_domain.g.dart';

@freezed
abstract class PerguntaDomain with _$PerguntaDomain{
  factory PerguntaDomain({
    int? id,
    required String texto,
    required int ordem
}) = _PerguntaDomain;

  factory PerguntaDomain.fromJson(Map<String, dynamic> json) => _$PerguntaDomainFromJson(json);
}