import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              children: <Widget>[
                _weatherDescription(),
                _temperature(),
                _detailedInformation(),
                _weatherList(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Column _weatherDescription() {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 5,
      ),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.all(6)),
        Text(
          "Enter City Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ]),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Text(
            "Tulskaya oblast, Tula",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            ),
          ),
          Text("Monday, Oct 03.2022",
              style: TextStyle(
                color: Color.fromARGB(196, 255, 255, 255),
                fontSize: 14.0,
              )),
        ],
      )
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 180,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.sunny,
            color: Colors.white,
            size: 80,
          ),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "9 °C",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "light snow".toUpperCase(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    ],
  );
}

Row _detailedInformation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
        Text(
          "7,0",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        Text(
          "m/s",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Icon(
          Icons.water_drop_outlined,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
        Text(
          "83",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        Text(
          "%",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ]),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
        Icon(
          Icons.cloud_queue_outlined,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
        Text(
          "733",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
        Text(
          "mmhg",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ]),
    ],
  );
}

class Day extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _weatherList();
  }
}

Widget _weatherList() {
  final weekday = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  final temperature = [
    '9 °C',
    '8 °C',
    '1 °C',
    '12 °C',
    '13 °C',
    '5 °C',
    '6 °C'
  ];

  final icons = [
    Icons.ac_unit,
    Icons.cloud_queue_outlined,
    Icons.ac_unit,
    Icons.water_drop_outlined,
    Icons.water_drop_outlined,
    Icons.ac_unit,
    Icons.ac_unit,
  ];

  return ListView.builder(
    itemCount: icons.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(weekday[index]),
          subtitle: Text(temperature[index]),
          trailing: Icon(icons[index]),
        ),
      );
    },
  );
}
