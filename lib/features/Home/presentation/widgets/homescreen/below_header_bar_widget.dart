import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';

class BelowHeaderBarWidget extends StatelessWidget {
  final String name;
  const BelowHeaderBarWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Welcome back, $name',
            style: TextStyle(fontSize: 18, color: primaryColor),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'What are you\n looking for?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
