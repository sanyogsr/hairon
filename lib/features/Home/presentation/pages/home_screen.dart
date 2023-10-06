import 'package:flutter/material.dart';
import 'package:hairon/config/route_constants.dart';
import 'package:hairon/core/common/widgets/appointment_time_card.dart';
import 'package:hairon/features/Home/presentation/widgets/homescreen/below_header_bar_widget.dart';
import 'package:hairon/features/Home/presentation/widgets/homescreen/header_bar_widget.dart';
import 'package:hairon/core/styling/theme/style.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            HeaderBarWidget(),
            SizedBox(height: screenHeight * 0.1),
            BelowHeaderBarWidget(
              name: "Kunal",
            ),
            SizedBox(
              height: screenHeight * 0.07,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.05, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/women_hairon.png",
                            serviceName: "Women",
                          ),
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/man.png",
                            serviceName: "Men",
                          ),
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/women_hairon.png",
                            serviceName: "Women",
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/women_hairon.png",
                            serviceName: "Women",
                          ),
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/women_hairon.png",
                            serviceName: "Women",
                          ),
                          _serviceItem(
                            context: context,
                            serviceImage: "assets/women_hairon.png",
                            serviceName: "Women",
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      AppointmentTimeCard(color: fadeColor),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _serviceItem(
      {required String serviceImage,
      required String serviceName,
      required BuildContext context}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, PageConst.discoverScreen);
      },
      child: Column(
        children: [
          Image.asset(
            serviceImage,
            scale: 5,
            width: 40,
            height: 40,
          ),
          SizedBox(height: 8),
          Text(
            serviceName,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
