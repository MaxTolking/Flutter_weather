/* import 'package:flutter/material.dart';
import 'package:flutter_example/models/weather_forecast_daily.dart';

class WeatherCard extends StatelessWidget {
  final Day day;

  const WeatherCard({
    Key? key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            day.weekday,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                day.temperature,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 10)),
              Icon(
                day.icon,
                color: Colors.white,
                size: 55,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 */