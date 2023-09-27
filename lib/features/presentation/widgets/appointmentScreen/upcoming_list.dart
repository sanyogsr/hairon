import 'package:flutter/cupertino.dart';
import 'package:hairon/features/presentation/widgets/common/appointment_time_card.dart';
import 'package:hairon/features/presentation/widgets/discoverscreen/salon_card.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

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
