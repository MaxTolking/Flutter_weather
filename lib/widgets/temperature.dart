import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 180,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Icon(
              Icons.sunny,
              color: Colors.white,
              size: 80,
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const <Widget>[
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
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
