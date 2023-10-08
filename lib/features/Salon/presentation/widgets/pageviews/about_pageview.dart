import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairon/core/styling/theme/style.dart';

class AboutWidget extends StatelessWidget {
  AboutWidget({Key? key}) : super(key: key);

  List daysNameLists = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List openingHoursLists = [
    "9:00 - 21:00",
    "9:00 - 21:00",
    "9:00 - 21:00",
    "9:00 - 21:00",
    "9:00 - 21:00",
    "9:00 - 21:00",
    "9:00 - 21:00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fadeColor,
      body: Column(
        children: [
          servicetitle(serviceName: "Opening Hours", context: context),
          const SizedBox(
            height: 5,
          ),
          aboutServiceItem(
              daysNameLists: daysNameLists,
              openingHoursLists: openingHoursLists),
        ],
      ),
    );
  }
}

Widget aboutServiceItem({
  required List daysNameLists,
  required List openingHoursLists,
}) {
  return Expanded(
    child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: daysNameLists.length,
      itemBuilder: (context, index) {
        return Container(
          // margin:
          // EdgeInsets.symmetric(vertical: 4, horizontal: 8), // Add margin
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 1.0, // Adjust the width of the bottom border as needed
              ),
            ),
            color: Colors.white, // White background
            // borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Add shadow
                blurRadius: 4,
              ),
            ],
          ),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  daysNameLists[index],
                  style: GoogleFonts.openSans(
                    // Use Google Fonts
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .03),
                  width: MediaQuery.of(context).size.width * .3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // Gray background
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      openingHoursLists[index],
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  // Handle "More" button tap.
                },
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget servicetitle(
    {required String serviceName, required BuildContext context}) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Container(
      color: fadeColor,
      padding:
          EdgeInsets.only(top: screenHeight * .02, left: screenWidth * .03),
      width: double.infinity,
      height: 50,
      child: Text(
        serviceName,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ));
}
