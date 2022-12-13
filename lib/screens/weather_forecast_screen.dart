import 'package:flutter/material.dart';
import 'package:flutter_example/screens/city_screen.dart';
import 'package:flutter_example/widgets/bottom_list_view.dart';
import 'package:flutter_example/widgets/city_view.dart';
import 'package:flutter_example/widgets/detail_view.dart';
import '../api/weather_api.dart';
import '../models/weather_forecast_daily.dart';
import '../widgets/temp_view.dart';

class WeatherForecastScreen extends StatefulWidget {
  const WeatherForecastScreen({
    Key? key,
    required this.locationWeather,
  }) : super(key: key);

  final locationWeather;

  @override
  State<WeatherForecastScreen> createState() => _WeatherForecastScreenState();
}

class _WeatherForecastScreenState extends State<WeatherForecastScreen> {
  Future<WeatherForecastApp>? forecastObject;
  String? _cityName;

  @override
  void initState() {
    super.initState();

    if (widget.locationWeather != null) {
      forecastObject = Future.value(widget.locationWeather);
    }

    /* forecastObject?.then((weather) {
      print(weather.list![0].weather![0].main);
    }); */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('openweathermap.org'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.my_location),
          onPressed: () {
            setState(() {
              forecastObject = WeatherApi().fetchWeatherForecast();
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.location_city),
            onPressed: () async {
              var tappedName = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CityScreen();
                  },
                ),
              );
              if (tappedName != null) {
                setState(() {
                  _cityName = tappedName;
                  forecastObject = WeatherApi()
                      .fetchWeatherForecast(cityName: _cityName, isCity: true);
                });
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          FutureBuilder(
            future: forecastObject,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    CityView(snapshot: snapshot),
                    const SizedBox(height: 50),
                    TempView(snapshot: snapshot),
                    const SizedBox(height: 50),
                    DetailView(snapshot: snapshot),
                    const SizedBox(height: 50),
                    BottomListView(snapshot: snapshot),
                  ],
                );
              } else {
                return const Center(
                  child: Text(
                    'Город не найден\nПожалуйста, введите существующий город',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
