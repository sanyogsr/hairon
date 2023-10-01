import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class MyHaircutsWidget extends StatelessWidget {
  MyHaircutsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: AlwaysScrollableScrollPhysics(parent: ClampingScrollPhysics()),
        itemCount: 10,
        itemBuilder: (context, index) {
          return photoCard();
        });
  }

  Widget photoCard() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 250,
      width: 200,
      decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: primaryColor, width: .5),
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
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("assets/sanyogg.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Haircut : Jazzy & Curly Cut",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
