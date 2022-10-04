import 'package:flutter/material.dart';

import '../model/day_entity.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,// SingleChildScrollView имеет бесконечную длину, и список, который ты в него тоже, поэтому флаттер ругается на то что не может определить размер
      child: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) => Text(days[index].weekday),
      ),
    );
  }
}

List<Day> days = [
  Day(icon: Icons.cloudy_snowing, weekday: 'Monday', temperature: '7'),
  Day(icon: Icons.sunny, weekday: 'Friday', temperature: '7'),
  Day(icon: Icons.cloudy_snowing, weekday: 'Tuesday', temperature: '7'),
  Day(icon: Icons.cloudy_snowing, weekday: 'Sunday', temperature: '7'),
];
