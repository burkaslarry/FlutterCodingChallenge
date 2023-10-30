import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import '../feature/weather_get.dart';
import 'package:dependency_injection/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherTemperaturePage extends StatefulWidget {
  @override
  _WeatherTemperaturePageState createState() => _WeatherTemperaturePageState();
}

class _WeatherTemperaturePageState extends State<WeatherTemperaturePage>
    with TickerProviderStateMixin {
  final WeatherRepository weatherRepo = WeatherRepository();

  @override
  void initState() {
    super.initState();
  }


  Color randomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Stream<double> temperatureStream() async* {
    while (true) {
      await Future.delayed(Duration(seconds: period));
      final temperature = await weatherRepo.fetchTemperature(37.7749, -122.4194);
      yield temperature;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('San Francisco Weather'),
      ),
      body: Center(
        child: StreamBuilder<double>(
          stream: temperatureStream(),
          builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              final temperature = kelvinToCelsius(snapshot.data!);
              print('Response temperature: ${temperature}');

              return Text(
                'Temperature: $temperature°C',
                style: TextStyle(fontSize: 24, color: randomColor()),
              );
            } else {
              return Text('No data');
            }
          },
        ),
      ),
    );
  }
}