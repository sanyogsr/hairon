// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';


class SimpleText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color? color;

 const SimpleText({
    Key? key,
    required this.text,
    required this.fontsize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
      ),
    );
  }
}
