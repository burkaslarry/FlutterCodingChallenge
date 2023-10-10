import 'package:flutter/material.dart';
import 'big_picture_screen.dart';
import 'package:image_lightbox/utils/constant.dart';

class SourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true, // Set fullscreenDialog to true
            builder: (context) => BigPictureScreen(catImagePath),
          ),
        );
      },
      child: Center(
        child: Hero(
          tag: 'myHeroTag',
          child: InteractiveViewer(
            child: Image.network(catImagePath),
          ),
        ),
      ),
    ));
  }
}
