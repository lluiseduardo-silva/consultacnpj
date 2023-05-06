// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consulta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Consulta _$$_ConsultaFromJson(Map<String, dynamic> json) => _$_Consulta(
      razao: json['RAZAO SOCIAL'] as String?,
      cnpj: json['CNPJ'] as String?,
      status: json['STATUS'] as String?,
      descricaoCnae: json['CNAE PRINCIPAL DESCRICAO'] as String?,
      cnaeCodido: json['CNAE PRINCIPAL CODIGO'] as String?,
      cep: json['CEP'] as String?,
      dataCriacao: json['DATA ABERTURA'] as String?,
      email: json['EMAIL'] as String?,
      tipoLogradouro: json['TIPO LOGRADOURO'] as String?,
      logradouro: json['LOGRADOURO'] as String?,
      numero: json['NUMERO'] as String?,
      complemento: json['COMPLEMENTO'] as String?,
      bairro: json['BAIRRO'] as String?,
      municipio: json['MUNICIPIO'] as String?,
      uf: json['UF'] as String?,
      ddd: json['DDD'] as String?,
      telefone: json['TELEFONE'] as String?,
    );

Map<String, dynamic> _$$_ConsultaToJson(_$_Consulta instance) =>
    <String, dynamic>{
      'RAZAO SOCIAL': instance.razao,
      'CNPJ': instance.cnpj,
      'STATUS': instance.status,
      'CNAE PRINCIPAL DESCRICAO': instance.descricaoCnae,
      'CNAE PRINCIPAL CODIGO': instance.cnaeCodido,
      'CEP': instance.cep,
      'DATA ABERTURA': instance.dataCriacao,
      'EMAIL': instance.email,
      'TIPO LOGRADOURO': instance.tipoLogradouro,
      'LOGRADOURO': instance.logradouro,
      'NUMERO': instance.numero,
      'COMPLEMENTO': instance.complemento,
      'BAIRRO': instance.bairro,
      'MUNICIPIO': instance.municipio,
      'UF': instance.uf,
      'DDD': instance.ddd,
      'TELEFONE': instance.telefone,
    };
