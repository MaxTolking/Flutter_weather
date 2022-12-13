import 'dart:convert';

import 'package:flutter_example/utilities/location.dart';

import '../models/weather_forecast_daily.dart';
import 'package:http/http.dart' as http;
import '../utilities/constants.dart';

class WeatherApi {
  Future<WeatherForecastApp> fetchWeatherForecast(
      {String? cityName, bool? isCity}) async {
    Location location = Location();
    await location.getCuerrentLocation();

    Map<String, String>? parameters;

    if (isCity == true) {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'q': cityName,
      };
      parameters = queryParameters.cast<String, String>();
    } else {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'lat': location.latitude.toString(),
        'lon': location.longitude.toString(),
      };
      parameters = queryParameters;
    }

    var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, parameters);

    print('request: ${uri.toString()}');

    var response = await http.get(uri);

    print('response: ${response.body}');

    if (response.statusCode == 200) {
      return WeatherForecastApp.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error responce');
    }
  }
}
