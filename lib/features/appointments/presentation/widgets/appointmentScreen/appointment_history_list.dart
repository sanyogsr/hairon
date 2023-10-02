import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';


class AppointmentHistoryList extends StatelessWidget{
  AppointmentHistoryList({Key? key}): super(key: key);



  Widget build(BuildContext context){
    return SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 15, )

              ,
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 20, left: 30, bottom: 20),
                    height: 55,
                    width: 50,
                    decoration: BoxDecoration(
                        color: index <2?
                        Colors.red.shade300: Colors.green.shade300 ,
                        shape: BoxShape.circle),
                    child: index <2? Icon(
                      Icons.cancel,
                      color: whiteColor,
                      size: 20,
                    ): Icon(
                      Icons.calendar_month,
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
                          'June 25 at 12:30',
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
            );
          },
          childCount: 5, // Replace with your item count
        ));
  }
}