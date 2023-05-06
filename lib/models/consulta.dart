import 'package:freezed_annotation/freezed_annotation.dart';

part 'consulta.freezed.dart';
part 'consulta.g.dart';

@freezed
class Consulta with _$Consulta {
  const factory Consulta({
    @JsonKey(name: 'RAZAO SOCIAL') String? razao,
    @JsonKey(name:'CNPJ') String? cnpj,
    @JsonKey(name: 'STATUS') String? status,
    @JsonKey(name: 'CNAE PRINCIPAL DESCRICAO') String? descricaoCnae,
    @JsonKey(name: 'CNAE PRINCIPAL CODIGO') String? cnaeCodido,
    @JsonKey(name: 'CEP') String? cep,
    @JsonKey(name: 'DATA ABERTURA') String? dataCriacao,
    @JsonKey(name: 'EMAIL') String? email,
    @JsonKey(name: 'TIPO LOGRADOURO') String? tipoLogradouro,
    @JsonKey(name: 'LOGRADOURO') String? logradouro,
    @JsonKey(name: 'NUMERO') String? numero,
    @JsonKey(name: 'COMPLEMENTO') String? complemento,
    @JsonKey(name: 'BAIRRO') String? bairro,
    @JsonKey(name: 'MUNICIPIO') String? municipio,
    @JsonKey(name: 'UF') String? uf,
    @JsonKey(name: 'DDD') String? ddd,
    @JsonKey(name: 'TELEFONE') String? telefone,
  }) = _Consulta;

  factory Consulta.fromJson(Map<String, dynamic> json) =>
      _$ConsultaFromJson(json);
}
