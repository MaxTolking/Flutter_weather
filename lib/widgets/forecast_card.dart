import 'package:flutter/material.dart';
import 'package:flutter_example/utilities/forecast_util.dart';

Widget forecastCard(AsyncSnapshot snapshot, int index) {
  var forecastList = snapshot.data!.list;

  DateTime date =
      DateTime.fromMicrosecondsSinceEpoch(forecastList[index].dt * 1000);
  var fullDate = Util.getFormattedDate(date);
  var dayOfWeek = '';
  dayOfWeek = fullDate.split(',')[0];
  var tempMin = forecastList[index].temp.min.toStringAsFixed(0);
  var icon = forecastList[index].getIconUrl();
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            dayOfWeek,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(148, 255, 255, 255),
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      '$tempMin °C',
                      style: const TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 221, 168, 87),
                      ),
                    ),
                  ),
                  Image.network(icon)
                ],
              )
            ],
          )
        ],
      ),
    ],
  );
}
