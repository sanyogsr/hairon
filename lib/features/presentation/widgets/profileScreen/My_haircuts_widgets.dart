import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class MyHaircutsWidget extends StatelessWidget {
  MyHaircutsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics:
                AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            itemCount: 10,
            itemBuilder: (context, index) {
              return photoCard();
            }));
  }

  Widget photoCard() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                color: primaryColor.withOpacity(.6),
                blurRadius: 6)
          ]),
      child: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/sanyogg.jpg",
              fit: BoxFit.cover,
              scale: 2,
            )
          ],
        ),
      ),
    );
  }
}
