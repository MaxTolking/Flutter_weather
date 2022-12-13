import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                cursorColor: const Color.fromARGB(255, 221, 168, 87),
                style: const TextStyle(
                  color: Colors.blueGrey,
                ),
                decoration: const InputDecoration(
                  hintText: 'Введите название города',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  filled: true,
                  fillColor: Color.fromARGB(255, 221, 168, 87),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                  icon: Icon(Icons.location_city,
                      color: Colors.blueGrey, size: 50),
                ),
                onChanged: (value) => cityName = value,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text(
                'Посмотреть погоду',
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                Navigator.pop(context, cityName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
