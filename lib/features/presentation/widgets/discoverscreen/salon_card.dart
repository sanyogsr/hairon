import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/features/presentation/widgets/common/blue_color_text.dart';
import 'package:hairon/features/presentation/widgets/common/simple_text.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

Widget salonCard() {
  return InkWell(
    child: Container(
      margin: EdgeInsets.all(15),
      width: 360,
      height: 260,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Stack(
        children: [
          Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(FeatherIcons.heart),
                color: Colors.black.withOpacity(.4),
              )),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 40,
                  child: Image.asset("assets/man.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                BlueColorText(
                  text: "Top In Town",
                  fontsize: 19,
                  isFontWeightNeeded: true,
                ),
                SizedBox(
                  height: 8,
                ),
                SimpleText(text: "Haircut , Haircolor", fontsize: 12),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: blackColor.withOpacity(.4),
                  endIndent: 20,
                  indent: 20,
                ),
                SizedBox(
                  height: 15,
                ),
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
              ],
            ),
          )
        ],
      ),
    ),
  );
}
