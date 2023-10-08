import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

Widget authButton(
    {String? logoName,
    required String title,
    required Color textColor,
    required Color backgroundColor,
    Color? iconColor}) {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: backgroundColor.withOpacity(1),
        boxShadow: [
          BoxShadow(
              offset: const Offset(2, 4), color: whiteColor, blurRadius: 10),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        logoName == ""
            ? Container()
            : Image.asset(
                "assets/$logoName.png",
                color: iconColor,
                width: 20,
                height: 20,
              ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
