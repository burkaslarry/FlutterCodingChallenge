import 'package:flutter/material.dart';
import './screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Draggable Scroll Bar Demo'),
        ),
        //DraggableScrollbar builds Stack with provided Scrollable List of Grid
        body: const MyHomePage(),
      ),
    );
  }
}
