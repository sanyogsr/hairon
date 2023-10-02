import 'package:flutter/cupertino.dart';
import 'package:hairon/core/common/widgets/appointment_time_card.dart';
import 'package:hairon/core/styling/theme/style.dart';

Widget UpcomingList() {
  return SliverList(
      delegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      return AppointmentTimeCard(
        isMarginNeeded: true,
        color: whiteColor,
      );
    },
    childCount: 1, // Replace with your item count
  ));
}
