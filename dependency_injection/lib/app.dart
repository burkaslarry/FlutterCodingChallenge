import 'package:flutter/material.dart';
import 'screen/home.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dependency Injection'),
            backgroundColor: Colors.orange,
          ),
          //DraggableScrollbar builds Stack with provided Scrollable List of Grid
          body: WeatherTemperaturePage()
      ),
    );
  }
}

