import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/Weather_model.dart';
import '../util/strings.dart';

class WeatherRepo {
  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=${Strings.apiKey}");

    if (result.statusCode != 200) throw Exception();

    return parsedJson(result.body);
  }

  WeatherModel parsedJson(final response) {
    final rawData = json.decode(response);

    final jsonWeather = rawData["main"];

    return WeatherModel.fromJson(jsonWeather);
  }
}
