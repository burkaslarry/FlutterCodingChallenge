import 'package:flutter/material.dart';
import 'package:image_lightbox/utils/constant.dart';

class BigPictureScreen extends StatelessWidget {
  final String imagePath;

  BigPictureScreen(this.imagePath); // Receive the image path as a parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Remove the app bar
      backgroundColor: Colors.black, // Set black background color
      body: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.vertical,
        onDismissed: (_) {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'myHeroTag',
            child: InteractiveViewer(
              child: Image.network(catImagePath),
            ),
          ),
        ),
      ),
    );
  }
}
