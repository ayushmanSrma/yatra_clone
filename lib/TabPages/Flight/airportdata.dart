import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadJsonData() async {
  String jsonData = await rootBundle.loadString('assets/airportData/AllAirport.json');
  return jsonData;
}

Future<dynamic> fetchData() async {
  String jsonData = await loadJsonData();
  dynamic data = json.decode(jsonData);
  return data;
}

void dataprint(){
  var data = fetchData();
  print(data);
}


