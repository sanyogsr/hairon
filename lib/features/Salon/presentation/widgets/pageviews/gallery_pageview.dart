import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  const GalleryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1.0, // Set a fixed aspect ratio
          ),
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 1.0, // Set a fixed aspect ratio for the image
              child: Image.asset(
                "assets/man.png", // Verify the image asset path
                fit: BoxFit.contain, // Adjust the fit property
              ),
            );
          },
        ),
      ),
    );
  }
}
