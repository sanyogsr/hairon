import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/core/styling/utils/utils.dart';
import 'package:hairon/core/styling/theme/style.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  _MobileScreenLayoutState createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationtopage(int page) {
    _pageController.jumpToPage(page);
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
      print(_page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: homeScreenItems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: _page == 1 ? 16 : 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.home,
              color: _page == 0 ? primaryColor : Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.search,
              color: _page == 1 ? primaryColor : Colors.black,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.calendar,
              color: _page == 2 ? primaryColor : Colors.black,
            ),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FeatherIcons.user,
              color: _page == 3 ? primaryColor : Colors.black,
            ),
            label: "Me",
          ),
        ],
        onTap: navigationtopage,
      ),
    );
  }
}
