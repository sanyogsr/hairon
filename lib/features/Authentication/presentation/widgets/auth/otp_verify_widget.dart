import 'package:flutter/material.dart';
import 'package:hairon/config/route_constants.dart';
import 'package:hairon/core/styling/theme/style.dart';

class OtpVerifyForm extends StatefulWidget {
  final VoidCallback onGoBack;
  const OtpVerifyForm({Key? key, required this.onGoBack}) : super(key: key);

  @override
  State<OtpVerifyForm> createState() => _MobileAuthFormWidgetState();
}

class _MobileAuthFormWidgetState extends State<OtpVerifyForm> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify Otp",
              style: TextStyle(color: blackColor, fontSize: 12),
            ),
            sizedBox(15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(11),
                  color: backgroundColor.withOpacity(1),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(2, 4),
                        color: whiteColor,
                        blurRadius: 10),
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Enter Otp"),
                keyboardType: TextInputType.number,
              ),
            ),
            sizedBox(10),
            GestureDetector(
              onTap: () async => __showOtpResendDialog(context),
              child: Text(
                " Don't receive Otp?",
                style: TextStyle(color: blackColor, fontSize: 12),
              ),
            ),
            sizedBox(40),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(
                    context, PageConst.mobileScreenLayout);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: primaryColor.withOpacity(.9),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(2, 4),
                          color: whiteColor,
                          blurRadius: 10),
                    ]),
                child: Center(
                    child: Text(
                  "Verify with Otp",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        )),
        sizedBox(150),
        SizedBox(
          width: 100,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(fadeColor)),
              onPressed: () {
                widget.onGoBack();
              },
              child: const Row(
                children: [Icon(Icons.arrow_left), Text("Go back")],
              )),
        ),
      ],
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(height: height);
  }

  Future<void> __showOtpResendDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Resend Otp",
              style: TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Would oyu like to resend the Otp",
                  style: TextStyle(color: blackColor, fontSize: 16),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(whiteColor),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 10))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Resend"),
              ),
            ],
          );
        });
  }
}
