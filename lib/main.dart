import 'package:flutter/material.dart';
import 'package:flutter_example/screens/location_screen.dart';
import 'screens/weather_forecast_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vanilla demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LocationScreen(),
    );
  }
}
/* import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/detailed_information.dart';
import 'package:flutter_example/widgets/temperature.dart';
import 'package:flutter_example/widgets/weather_description.dart';
import 'package:flutter_example/widgets/weather_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather Forecast",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      WeatherDescription(),
                      Temperature(),
                      DetailedInformation(),
                      WeatherList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}
 */