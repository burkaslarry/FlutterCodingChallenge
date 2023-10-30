import 'package:flutter/material.dart';
import 'package:image_lightbox/screens/fade_transition_route.dart';
import 'package:image_lightbox/screens/source_screen.dart';
import 'package:image_lightbox/utils/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                FadeTransitionRoute(builder: (BuildContext context) {
                  return const SourceScreen(imageUrl: catImagePath, heroTag: heroAnimationTag);
                },),
              );
            },
            child: Hero(
              tag: heroAnimationTag,
              child: Image.network(
                  catImagePath,
              ),
            ),
          ),
        ),
      ),
    );
  }
}