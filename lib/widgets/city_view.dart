import 'package:flutter/material.dart';
import 'package:flutter_example/models/weather_forecast_daily.dart';

import '../utilities/forecast_util.dart';

class CityView extends StatelessWidget {
  const CityView({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot<WeatherForecastApp> snapshot;

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
    var city = snapshot.data!.city!.name;
    var country = snapshot.data!.city!.country;
    var formattedDate =
        DateTime.fromMicrosecondsSinceEpoch(forecastList![0].dt! * 1000);
    return Column(
      children: <Widget>[
        Text(
          '$city, $country',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.blueGrey,
          ),
        ),
        Text(
          Util.getFormattedDate(formattedDate),
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
