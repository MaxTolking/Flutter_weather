import 'package:flutter/material.dart';

import '../models/weather_forecast_daily.dart';
import 'forecast_card.dart';

class BottomListView extends StatelessWidget {
  const BottomListView({super.key, required this.snapshot});

  final AsyncSnapshot<WeatherForecastApp> snapshot;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Прогноз погоды на 7 дней'.toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 140,
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.7,
              height: 160,
              color: Colors.blueGrey,
              child: forecastCard(snapshot, index),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemCount: snapshot.data!.list!.length,
          ),
        ),
      ],
    );
  }
}
