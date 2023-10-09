import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hairon/core/styling/theme/style.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:line_icons/line_icons.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  String selectedPaymentMethod = '';

  CalendarFormat _format = CalendarFormat.month;
  DateTime _focusDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  int? _currenntIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;
  @override
  Widget build(BuildContext context) {
    // Config().init(context);
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              LineIcons.angleLeft,
              color: blackColor,
            )),
        title: Text(
          "Booking",
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _tableCalender(),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: MediaQuery.of(context).size.height * .01)),
                  // Center(
                  //   child:
                  _isWeekend
                      ? Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Select Haircut Time",
                              style: GoogleFonts.openSans(
                                textStyle:
                                    TextStyle(color: blackColor, fontSize: 17),
                              )),
                        )
                      : Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.all(15),
                          child: Text("Select Haircut Time",
                              style: GoogleFonts.openSans(
                                textStyle:
                                    TextStyle(color: blackColor, fontSize: 17),
                              )),
                        ),

                  const SizedBox(
                    height: 10,
                  )
                  // ),
                ]),
          ),
          _isWeekend
              ? SliverToBoxAdapter(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Text(
                      "All day available mention \nnot mere bhai..!",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
                  ),
                )
              : SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: 1,
                      (context, index) {
                  return Container(
                      height: 70,
                      margin: const EdgeInsets.all(15),
                      child: ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          itemCount: 12,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _buildListItem(index,
                                "${index + 9}:00 ${index + 9 > 11 ? "PM" : "AM"}");
                          }));
                })),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 60,
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: _timeSelected == true ? primaryColor : fadeColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Confirm Booking",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color:
                              _timeSelected == true ? whiteColor : blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tableCalender() {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: fadeColor, borderRadius: BorderRadius.circular(20)),
      child: TableCalendar(
        focusedDay: _focusDay,
        firstDay: DateTime.now(),
        formatAnimationCurve: Curves.bounceOut,
        pageAnimationCurve: Curves.bounceOut,
        headerStyle: const HeaderStyle(titleCentered: true),
        lastDay: DateTime(2024),
        calendarFormat: _format,
        currentDay: _currentDay,
        rowHeight: 48,
        calendarStyle: CalendarStyle(
            todayDecoration:
                BoxDecoration(color: primaryColor, shape: BoxShape.circle)),
        availableCalendarFormats: const {CalendarFormat.month: "Month"},
        onFormatChanged: (format) {
          _format = format;
        },
        onDaySelected: (((selectedDay, focusedDay) {
          setState(() {
            _currentDay = selectedDay;
            _focusDay = focusedDay;
            _dateSelected = true;

            if (_currentDay.weekday == 6 || _currentDay.weekday == 7) {
              _isWeekend = true;
              _timeSelected = false;
              _currenntIndex = null;
            } else {
              _isWeekend = false;
            }
          });
        })),
      ),
    );
  }

  Widget _buildListItem(int index, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          _currenntIndex = index;
          _timeSelected = true;
        });
      },
      child: Container(
        width: 100, // Width of each item in the horizontal list
        // height: 50,
        margin: const EdgeInsets.all(8),

        decoration: BoxDecoration(
            color: _currenntIndex == index ? primaryColor : fadeColor,
            borderRadius: BorderRadius.circular(
              10,
            )),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: _currenntIndex == index ? whiteColor : blackColor),
          ),
        ),
      ),
    );
  }
}
