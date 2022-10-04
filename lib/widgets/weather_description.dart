import 'package:flutter/material.dart';

class WeatherDescription extends StatelessWidget {
  const WeatherDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 5,
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: const <Widget>[
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
          children: const <Widget>[
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
}
