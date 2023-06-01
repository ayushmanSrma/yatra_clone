import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:http_parser/http_parser.dart';
import 'package:yatri_clone/Data%20and%20API/responses.dart';

var responseJson;

class ApiProvider {
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://airlabs.co/api/v9/airports?iata_code=CDG&api_key=48b03ab5-a8ad-4867-960f-ed8c1d9066d2"));
    if (response.statusCode == 200) {
      responseJson = Responses(
          statusCode: '200',
          data: jsonDecode(response.body),
          message: 'success');
    } else {
      responseJson = Responses(
          statusCode: response.statusCode.toString(),
          message: jsonDecode(response.body));
    }
    return responseJson;
  }
}
