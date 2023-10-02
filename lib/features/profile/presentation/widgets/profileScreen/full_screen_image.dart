import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  FullScreenImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PhotoView(
          imageProvider: AssetImage(imageUrl),
          backgroundDecoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5), // Background color with opacity
          ),
        ),
      ),
    );
  }
}
