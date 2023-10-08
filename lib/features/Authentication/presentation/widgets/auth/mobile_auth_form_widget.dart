import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:hairon/core/styling/theme/style.dart';

Widget mobileAuthFormWidget(
    {required VoidCallback onVerify, required bool showOtpForm}) {
  TextEditingController _phoneNumberController = TextEditingController();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Phone Number",
        style: TextStyle(color: blackColor, fontSize: 12),
      ),
      sizedBox(15),
      Form(
          child: Column(
        children: [
          IntlPhoneField(
            controller: _phoneNumberController,
            initialCountryCode: "IN",
            keyboardType: TextInputType.phone,
          ),
          sizedBox(20),
          InkWell(
            onTap: () {
              if (!showOtpForm) {
                onVerify();
              }
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
                "Verify",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
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
