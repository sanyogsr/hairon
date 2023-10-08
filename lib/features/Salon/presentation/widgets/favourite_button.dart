import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

Widget favouriteButton(
    {required BuildContext context,
    required String title,
    required VoidCallback favouritebutton,
    required bool isFavourite}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return InkWell(
    onTap: () {
      favouritebutton();
    },
    child: Container(
      // padding: EdgeInsets.all(5),
      height: screenHeight * .045,
      width: screenWidth * 0.3,
      decoration: BoxDecoration(
          color: isFavourite ? whiteColor : blackColor.withOpacity(.5),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: isFavourite ? Colors.red : whiteColor,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: isFavourite ? Colors.red : whiteColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ),
  );
}
