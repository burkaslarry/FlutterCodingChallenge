import 'package:flutter/material.dart';
import 'screens/source_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image LightBox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image LightBox Demo'),
        ),
        //DraggableScrollbar builds Stack with provided Scrollable List of Grid
        body: SourceScreen(),
      ),
    );
  }
}
