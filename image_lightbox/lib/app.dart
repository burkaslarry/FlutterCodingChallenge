import 'package:flutter/material.dart';
import 'package:image_lightbox/screens/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image LightBox',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image LightBox Demo'),
        ),
        //DraggableScrollbar builds Stack with provided Scrollable List of Grid
        body: const HomePage(),
      ),
    );
  }
}
