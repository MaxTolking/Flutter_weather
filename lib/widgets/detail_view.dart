import 'package:flutter/material.dart';

import 'package:flutter_example/models/weather_forecast_daily.dart';
import 'package:flutter_example/utilities/forecast_util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.snapshot,
  }) : super(key: key);
  final AsyncSnapshot<WeatherForecastApp> snapshot;

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
    var pressure = forecastList![0].pressure! * 0.750062;
    var humidity = forecastList[0].humidity;
    var wind = forecastList[0].speed;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Util.getItem(FontAwesomeIcons.thermometer, pressure.round(), 'mm Hq'),
        Util.getItem(FontAwesomeIcons.cloudRain, humidity!, '%'),
        Util.getItem(FontAwesomeIcons.wind, wind!.toInt(), 'm/s'),
      ],
    );
  }
}
