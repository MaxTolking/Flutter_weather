/* import 'package:flutter/material.dart';

import '../models/weather_forecast_daily.dart';
import 'package:flutter_example/widgets/weather_card.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: days.length,
          itemBuilder: (context, index) => WeatherCard(
            day: days[index],
          ),
        ),
      ),
    );
  }
}

List<Day> days = [
  Day(icon: Icons.cloudy_snowing, weekday: 'Monday', temperature: '1 °C'),
  Day(icon: Icons.sunny, weekday: 'Friday', temperature: '3 °C'),
  Day(icon: Icons.cloudy_snowing, weekday: 'Tuesday', temperature: '5 °C'),
  Day(icon: Icons.wb_cloudy, weekday: 'Sunday', temperature: '7 °C'),
  Day(icon: Icons.wb_cloudy, weekday: 'Wednesday', temperature: '9 °C'),
  Day(icon: Icons.cloudy_snowing, weekday: 'Thursday', temperature: '12 °C'),
  Day(icon: Icons.wb_cloudy, weekday: 'Saturday', temperature: '15 °C'),
];
 */