import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedInformation extends StatelessWidget {
  const DetailedInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: const <Widget>[
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
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: const <Widget>[
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
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: const <Widget>[
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
}
