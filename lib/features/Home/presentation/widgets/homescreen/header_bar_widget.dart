import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

class HeaderBarWidget extends StatelessWidget {
  const HeaderBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 35,
          width: 94,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.location_searching,
                    size: 18,
                  ),
                  Text(
                    "Sonipat",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          child: Image.asset("assets/man.png"),
        )
      ]),
    );
  }
}
