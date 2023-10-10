import 'package:flutter/material.dart';
import 'package:image_lightbox/utils/constant.dart';

class BigPictureScreen extends StatefulWidget {
  final String imagePath = "";

  @override
  State<BigPictureScreen> createState() => _BigPictureScreenState();
}

class _BigPictureScreenState extends State<BigPictureScreen> {
  double floatProgress = 0.0;
  Color backgroundColor = Colors.black;
  // Receive the image path as a parameter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor.withOpacity(1.0 - floatProgress),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: backgroundColor.withOpacity(1.0 - floatProgress),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black, // Set black background color
      body: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.vertical,
        onDismissed: (_) {
          //image already exit
          Navigator.pop(context);
        },
        onUpdate: (details) => {
          setState(() {
            //fade out
            floatProgress = 1.0 - details.progress;
          })
        },
        child: Center(
          child: Hero(
              tag: heroAnimationTag,
              child: InteractiveViewer(
                child: Image.network(catImagePath),
              ),
              transitionOnUserGestures: true),
        ),
      ),
    );
  }
}
