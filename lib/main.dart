import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/widgets/detailed_information.dart';
import 'package:flutter_example/widgets/temperature.dart';
import 'package:flutter_example/widgets/weather_description.dart';
import 'package:flutter_example/widgets/weather_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: _buildBody(),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                WeatherDescription(),
                Temperature(),
                DetailedInformation(),
                WeatherList()
                //_weatherList(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
