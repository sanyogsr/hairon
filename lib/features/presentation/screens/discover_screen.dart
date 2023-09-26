// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/features/presentation/widgets/discoverscreen/salon_card.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {},
        child: Icon(
          FeatherIcons.mapPin,
        ),
      ),
      backgroundColor: Colors.grey[200], // Use your desired background color
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            scrolledUnderElevation: 1,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.search,
                    color: Colors.black,
                  ))
            ],
            backgroundColor: Colors.white,
            floating:
                false, // Set to true if you want it to stay at the top while scrolling
            pinned:
                true, // Set to true if you want it to remain pinned at the top
            expandedHeight: 0.0, // Adjust this height as needed
            flexibleSpace: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        Colors.black.withOpacity(.4), // Adjust the line color
                    width: 0.5, // Adjust the line thickness
                  ),
                ),
              ),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Discover',
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
              color: Colors.white, // Adjust background color as needed
              child: _discoverUpperRow(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return salonCard();
              },
              childCount: 10, // Replace with your item count
            ),
          ),
        ],
      ),
    );
  }

  Widget _discoverUpperRow() {
    return Container(
      color: whiteColor,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _discoverUpperRowElements(
            icon: Image.asset(
              'assets/man.png',
              width: 25,
              height: 25,
            ),
            fontSize: 14,
            title: "Haircut",
          ),
          _discoverUpperRowElements(
            icon: Icon(
              FeatherIcons.calendar,
              size: 21,
              color: primaryColor,
            ),
            fontSize: 14,
            title: "Any date",
          ),
          _discoverUpperRowElements(
            fontSize: 14,
            icon: Icon(
              FeatherIcons.filter,
              size: 21,
              color: primaryColor,
            ),
            title: "Filter",
          )
        ],
      ),
    );
  }

  Widget _discoverUpperRowElements(
      {required Widget icon, required String title, required double fontSize}) {
    return Column(
      children: [
        icon,
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: fontSize),
        )
      ],
    );
  }
}
