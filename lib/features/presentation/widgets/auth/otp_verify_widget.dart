import 'package:flutter/material.dart';
import 'package:hairon/constants.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class OtpVerifyForm extends StatefulWidget {
  const OtpVerifyForm({Key? key}) : super(key: key);

  @override
  State<OtpVerifyForm> createState() => _MobileAuthFormWidgetState();
}

class _MobileAuthFormWidgetState extends State<OtpVerifyForm> {
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Verify Otp",
          style: TextStyle(color: blackColor, fontSize: 12),
        ),
        sizedBox(15),
        Form(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Enter Otp"),
                keyboardType: TextInputType.number,
              ),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(11),
                  color: backgroundColor.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2, 4),
                        color: whiteColor,
                        blurRadius: 10),
                  ]),
            ),
            sizedBox(20),
            InkWell(
              onTap: () {
                print(_phoneNumberController.text);
                Navigator.pushNamed(context, PageConst.mobileScreenLayout);
              },
              child: Container(
                child: Center(
                    child: Text(
                  "Verify with Otp",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: primaryColor.withOpacity(.9),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(2, 4),
                          color: whiteColor,
                          blurRadius: 10),
                    ]),
              ),
            )
          ],
        )),
      ],
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(height: height);
  }
}
