import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FeatherIcons.heart),
            SizedBox(
              height: 10,
            ),
            Text("No Favourites...!")
          ],
        ),
      ),
    );
  }
}
