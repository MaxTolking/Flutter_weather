import 'package:flutter/material.dart';
import 'package:flutter_example/screens/weather_forecast_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../api/weather_api.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  void getLocationData() async {
    try {
      var weatherInfo = await WeatherApi().fetchWeatherForecast;
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const WeatherForecastScreen(
          locationWeather: null,
        );
      }));
    } catch (e) {
      print('$e');
    }
  }

  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitCircle(
          color: Colors.blueGrey,
          size: 100,
        ),
      ),
    );
  }
}
