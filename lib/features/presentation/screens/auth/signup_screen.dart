import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/auth/auth_button_widget.dart';
import 'package:hairon/features/presentation/widgets/auth/mobile_auth_form_widget.dart';
import 'package:hairon/features/presentation/widgets/auth/otp_verify_widget.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showOtpForm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 80, bottom: 60),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/Barber.gif",
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "It's Hairon",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                AnimatedSwitcher(
                    duration: Duration(seconds: 1),
                    child: !showOtpForm
                        ? mobileAuthFormWidget(onVerify: () {
                            setState(() {
                              showOtpForm = true;
                            });
                          })
                        : OtpVerifyForm()),
                sizedBox(50),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: blackColor.withOpacity(.3),
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text("Or"),
                    ),
                    Expanded(
                      child: Divider(
                        color: blackColor.withOpacity(.3),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                sizedBox(40),
                authButton(
                    logoName: "google",
                    title: "Continue with Google",
                    textColor: blackColor,
                    backgroundColor: fadeColor),
                sizedBox(20),
                authButton(
                    logoName: "apple-logo",
                    title: "Continue with Apple",
                    textColor: whiteColor,
                    backgroundColor: blackColor,
                    iconColor: whiteColor)
              ]),
        ),
      ),
    );
  }

  Widget sizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }
}
