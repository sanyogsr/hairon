import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/features/appointments/presentation/widgets/appointmentScreen/appointment_history_list.dart';
import 'package:hairon/features/appointments/presentation/widgets/appointmentScreen/upcoming_list.dart';
import 'package:hairon/core/styling/theme/style.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fadeColor,
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            // scrolledUnderElevation: 1,
            floating: false,
            pinned: true,
            backgroundColor: whiteColor,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.search,
                    color: blackColor,
                  ))
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: blackColor.withOpacity(.4), width: 0.5))),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Appointments",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Upcoming",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
          ),
          SliverPadding(padding: EdgeInsets.all(15), sliver: UpcomingList()),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Past",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
          ),

          SliverPadding(padding: EdgeInsets.all(15), sliver: AppointmentHistoryList()),
        ],
      ),
    );
  }
}
