import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/homescreen/below_header_bar_widget.dart';
import 'package:hairon/features/presentation/widgets/homescreen/header_bar_widget.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';
// import 'dart:js_util';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  child: Column(
                children: [
                  HeaderBarWidget(),
                  SizedBox(
                    height: 70,
                  ),
                  BelowHeaderBarWidget(
                    name: "Kunal",
                  ),
                ],
              )),
              Positioned(
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        )),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: 50, left: 20, right: 20, bottom: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/women_hairon.png",
                                    serviceName: "Women"),
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/man.png",
                                    serviceName: "Men"),
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/women_hairon.png",
                                    serviceName: "Women"),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/women_hairon.png",
                                    serviceName: "Women"),
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/women_hairon.png",
                                    serviceName: "Women"),
                                _serviceItem(
                                    height: 40,
                                    width: 40,
                                    serviceImage: "assets/women_hairon.png",
                                    serviceName: "Women"),
                              ],
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: fadeColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 20, left: 30, bottom: 20),
                                    height: 55,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: whiteColor,
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 23, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tommorow at 12:30',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: primaryColor,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Hairstyling at ',
                                              style: TextStyle(),
                                            ),
                                            Text(
                                              'Salon Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  )),
            ],
          ),
        ));
  }

  Widget _serviceItem(
      {required String serviceImage,
      required String serviceName,
      required double width,
      required double height}) {
    return Column(
      children: [
        Image.asset(
          "$serviceImage",
          scale: 5,
          width: width,
          height: height,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '$serviceName',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
