import 'package:flutter/material.dart';
import 'package:flutter_example/models/weather_forecast_daily.dart';

class TempView extends StatelessWidget {
  const TempView({Key? key, required this.snapshot}) : super(key: key);

  final AsyncSnapshot<WeatherForecastApp> snapshot;

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
    var icon = forecastList![0].getIconUrl();
    var temp = forecastList[0].temp!.day!.toStringAsFixed(0);
    var description = forecastList[0].weather![0].description!.toUpperCase();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          icon,
          scale: 0.4,
          color: Colors.blueGrey,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: <Widget>[
            Text(
              '$temp °C',
              style: const TextStyle(
                fontSize: 54,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
              ),
            )
          ],
        )
      ],
    );
  }
}
