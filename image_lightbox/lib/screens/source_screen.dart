import 'package:flutter/material.dart';
import 'big_picture_screen.dart';
import 'package:image_lightbox/utils/constant.dart';

class SourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: transitionDuration),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return BigPictureScreen();
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return Align(
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
          ),
        );
      },
      child: Center(
        child: Hero(
          tag: heroAnimationTag,
          child: InteractiveViewer(
            child: Image.network(catImagePath),
          ),
        ),
      ),
    ));
  }
}
