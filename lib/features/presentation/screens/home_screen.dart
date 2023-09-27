import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/common/appointment_time_card.dart';
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
                           AppointmentTimeCard(color: fadeColor,)
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
