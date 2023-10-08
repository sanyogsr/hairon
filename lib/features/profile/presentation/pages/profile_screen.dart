import 'package:flutter/material.dart';
import 'package:hairon/core/common/widgets/simple_text.dart';
import 'package:hairon/features/profile/presentation/widgets/profileScreen/Favourite_widget.dart';
import 'package:hairon/features/profile/presentation/widgets/profileScreen/My_haircuts_widgets.dart';
import 'package:hairon/features/profile/presentation/widgets/profileScreen/edit_profile.dart';
import 'package:hairon/core/styling/theme/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  List<Widget> pages = [MyHaircutsWidget(), const FavouriteWidget(), const EditProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 60,
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ignore: prefer_const_constructors
                      SimpleText(text: "Himanshu Gupta", fontsize: 20),
                      const SizedBox(
                        height: 2,
                      ),
                      SimpleText(
                        text: "@himanshu",
                        fontsize: 15,
                        color: primaryColor.withOpacity(.7),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60, right: 30),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/sanyogg.jpg"),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high),
                      borderRadius: BorderRadius.circular(50),
                      color: whiteColor,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(3, 8),
                            blurRadius: 10,
                            color: primaryColor.withOpacity(.6))
                      ]),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),

          // Row of Texts
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavItem(
                title: "My Haircuts",
                index: 0,
              ),
              buildNavItem(
                title: "Favourites",
                index: 1,
              ),
              buildNavItem(
                title: "Edit Profile",
                index: 2,
              ),
            ],
          ),
          // Horizontal Line
          Container(
            height: 1.0,
            width: double.infinity,
            color: Colors.grey[300], // Fade grey line
          ),
          // Page content
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              scrollBehavior: const MaterialScrollBehavior(),
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
        ],
      )),
    );
  }

  Widget buildNavItem({
    required String title,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {});
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 2.0,
              color: currentPageIndex == index
                  ? Colors.grey[800] ?? Colors.transparent
                  : Colors.transparent,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: currentPageIndex == index
                ? Colors.grey[800] // Dark grey for the current page
                : Colors.grey[600], // Light grey for other pages
          ),
        ),
      ),
    );
  }
}
