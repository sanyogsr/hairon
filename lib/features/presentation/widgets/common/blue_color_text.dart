// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class BlueColorText extends StatelessWidget {
  final String text;
  final double fontsize;
  final bool isFontWeightNeeded;
  BlueColorText({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.isFontWeightNeeded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: primaryColor,
          fontSize: fontsize,
          fontWeight:
              isFontWeightNeeded == true ? FontWeight.bold : FontWeight.normal),
    );
  }
}
