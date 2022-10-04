import 'package:flutter/material.dart';

class Day {
  Day({
    required this.icon,
    required this.weekday,
    required this.temperature,
  });

  final String weekday;
  final String temperature;
  final IconData icon;
}
