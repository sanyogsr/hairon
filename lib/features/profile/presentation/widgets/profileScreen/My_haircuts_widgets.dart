import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

class MyHaircutsWidget extends StatelessWidget {
  MyHaircutsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.all(20),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: primaryColor, width: .5),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 1),
                  color: primaryColor.withOpacity(.6),
                  blurRadius: 6)
            ]),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/sanyogg.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                "Haircut : Jazzy & Curly Cut",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
      const Positioned(
        top: 30, // Adjust this value as needed
        right: 30, // Adjust this value as needed
        child: Row(
          children: [
            Text(
              " with Hairon",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 10,
            )
          ],
        ),
      ),
    ]);
  }
}
