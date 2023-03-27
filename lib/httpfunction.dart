import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numberfact/number_fact_generator/number_fact_generator.dart';

Future<NumberFactGenerator> nuberFact({required int num}) async {
  var response = await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final bodyOfJson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = NumberFactGenerator.fromJson(bodyOfJson);
  return data;
}
