import 'dart:convert';

import 'package:consultacnpj/utils/constants.dart';
import 'package:http/http.dart' as http;

import '../../models/consulta.dart';

class Api {
  Future<Map<String, dynamic>> buscarCnpj(String cnpj) async {
    var cnpjprocessado = cnpj.replaceAll('.', "").replaceAll('/', "").replaceAll('-', "").trim();
    //Build URI
    Uri url = Uri.parse("https://api-publica.speedio.com.br/buscarcnpj?cnpj=$cnpjprocessado");

    var data = await http.get(url);
    var parsed = await json.decode(data.body);

    // var mockdata = {
    //   "NOME FANTASIA": "",
    //   "RAZAO SOCIAL": "A N DE O QUEIROZ REFRIGERACAO LTDA",
    //   "CNPJ": "17830413000104",
    //   "STATUS": "ATIVA",
    //   "CNAE PRINCIPAL DESCRICAO": "Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente",
    //   "CNAE PRINCIPAL CODIGO": "3313999",
    //   "CEP": "69068000",
    //   "DATA ABERTURA": "27/03/2013",
    //   "DDD": "92",
    //   "TELEFONE": "91022367",
    //   "EMAIL": "",
    //   "TIPO LOGRADOURO": "AVENIDA",
    //   "LOGRADOURO": "TEFE",
    //   "NUMERO": "1065",
    //   "COMPLEMENTO": "CSA/ A",
    //   "BAIRRO": "RAIZ",
    //   "MUNICIPIO": "Manaus",
    //   "UF": "AM"
    // };

    // var result = Consulta.fromJson(mockdata);

    return parsed;
  }
}