import "package:flutter/material.dart";
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/core/common/widgets/simple_text.dart';
import 'package:hairon/core/styling/theme/style.dart';
import 'package:hairon/features/Salon/presentation/widgets/pageviews/about_pageview.dart';
import 'package:hairon/features/Salon/presentation/widgets/pageviews/gallery_pageview.dart';
import 'package:hairon/features/Salon/presentation/widgets/pageviews/service_pageview.dart';

import 'package:line_icons/line_icons.dart';

class SalonScreen extends StatefulWidget {
  SalonScreen({Key? key}) : super(key: key);

  @override
  State<SalonScreen> createState() => _SalonScreenState();
}

class _SalonScreenState extends State<SalonScreen> {
  bool isFavourite = false;
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  List<Widget> pages = [
    const ServiceWidget(),
    AboutWidget(),
    const GalleryWidget()
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: fadeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            LineIcons.angleLeft,
            color: blackColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                LineIcons.bell,
                color: primaryColor,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              color: whiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * .01,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: screenHeight * .03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          child: Image.asset("assets/man.png"),
                        ),
                        SizedBox(
                          width: screenHeight * .017,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screenHeight * .014,
                            ),
                            Text(
                              "@Haironer",
                              style: TextStyle(color: primaryColor),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * .04),
                        const SimpleText(
                            text: "Hairstyling, Haircolour, Massage, Nail  etc",
                            fontsize: 12),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * .005),
                  Divider(
                    color: blackColor.withOpacity(.4),
                    indent: screenWidth * .03,
                    endIndent: screenWidth * .03,
                  ),
                  SizedBox(height: screenHeight * .017),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          SimpleText(
                            text: "From ",
                            fontsize: 12,
                            color: blackColor.withOpacity(.4),
                          ),
                          Icon(
                            FeatherIcons.dollarSign,
                            size: 12,
                            color: blackColor.withOpacity(.4),
                          ),
                          SimpleText(
                              text: "15",
                              fontsize: 12,
                              color: blackColor.withOpacity(.4))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FeatherIcons.clock,
                            size: 12,
                            color: blackColor.withOpacity(.4),
                          ),
                          SimpleText(
                              text: " 30 mins",
                              fontsize: 12,
                              color: blackColor.withOpacity(.4))
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            FeatherIcons.star,
                            size: 12,
                            color: blackColor.withOpacity(.4),
                          ),
                          SimpleText(
                              text: " 4/5",
                              fontsize: 12,
                              color: blackColor.withOpacity(.4))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * .05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: const Row(
                            children: [
                              Icon(
                                LineIcons.phoneVolume,
                                color: Colors.green,
                              ),
                              Text(
                                "Call now",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * .17,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: const Row(
                            children: [
                              Icon(
                                LineIcons.rocketChat,
                                color: Colors.green,
                              ),
                              Text(
                                "Chat now",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * .04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(
                          title: "Services",
                          index: 0,
                          icon: LineIcons.suitcase),
                      _buildNavItem(
                          title: "About", index: 1, icon: LineIcons.bullhorn),
                      _buildNavItem(
                          title: "Gallery", index: 2, icon: LineIcons.image)
                    ],
                  ),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300], // Fade grey line
                  ),
                  Container(
                    height: screenHeight,
                    child: PageView.builder(
                      controller: _pageController,
                      scrollBehavior: const MaterialScrollBehavior(),
                      itemBuilder: (context, index) {
                        return pages[index];
                      },
                      itemCount: pages.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentPageIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      {required String title, required int index, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 2,
                    color: currentPageIndex == index
                        ? primaryColor
                        : Colors.transparent))),
        child: Column(
          children: [
            Icon(icon,
                color: currentPageIndex == index
                    ? primaryColor
                    : Colors.grey[600]),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: currentPageIndex == index
                      ? primaryColor
                      : Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
