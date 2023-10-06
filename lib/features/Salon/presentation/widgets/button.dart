import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

Widget salonScreenButton(
    {required BuildContext context, required String title}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return InkWell(
    child: Container(
      height: screenHeight * .045,
      width: screenWidth * 0.23,
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: whiteColor),
        ),
      ),
    ),
  );
}
