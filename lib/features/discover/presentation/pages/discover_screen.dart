import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/features/discover/presentation/widgets/discoverscreen/salon_card.dart';
import 'package:hairon/core/styling/theme/style.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  bool showLeadingIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        onPressed: () {},
        child: Icon(
          FeatherIcons.map,
          color: whiteColor,
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            scrolledUnderElevation: 1,
            leading: AnimatedOpacity(
              opacity: showLeadingIcon ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FeatherIcons.filter,
                  color: blackColor,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FeatherIcons.search,
                  color: Colors.black,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            expandedHeight: 60.0, // Adjust this height as needed
            flexibleSpace: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(.4),
                    width: 0.5,
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
            child: _discoverUpperRow(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return salonCard(context); // Replace with your custom card widget
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

  Widget _discoverUpperRowElements({
    required Widget icon,
    required String title,
    required double fontSize,
  }) {
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
