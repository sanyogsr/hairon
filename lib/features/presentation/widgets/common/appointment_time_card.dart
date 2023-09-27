import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

class AppointmentTimeCard extends StatelessWidget{
  final bool? isMarginNeeded;
  final Color color;
  AppointmentTimeCard({Key? key,  this.isMarginNeeded, required this.color}): super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      margin: isMarginNeeded == true ? EdgeInsets.only(bottom: 10, ):  null

           ,
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: color,
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
    );
  }
}