import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
// import "package:hairon/core/styling/theme/style.dart";

class ServiceItemWidget extends StatefulWidget {
  final List serviceNameList;
  final List servicePriceList;

  final int index;

  ServiceItemWidget({
    required this.serviceNameList,
    required this.servicePriceList,
    required this.index,
  });

  @override
  _ServiceItemWidgetState createState() => _ServiceItemWidgetState();
}

class _ServiceItemWidgetState extends State<ServiceItemWidget>
    with TickerProviderStateMixin {
  AnimationController? _moreButtonController;
  AnimationController? _bookNowButtonController;

  @override
  void initState() {
    _moreButtonController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });
    _bookNowButtonController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 100),
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _bookNowButtonController!.dispose();
    _moreButtonController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double moreButtonScale = 1 - _moreButtonController!.value;
    final double bookNowScale = 1 - _bookNowButtonController!.value;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.3),
            width: 1.0, // Adjust the width of the bottom border as needed
          ),
        ),
        color: Colors.white, // White background
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Add shadow
            blurRadius: 4,
            // offset: const Offset(0, 2),
          ),
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.serviceNameList[widget.index],
                  style: GoogleFonts.openSans(
                    // Use Google Fonts
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  "Rs.${widget.servicePriceList[widget.index]}", // Add currency symbol
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              _buildButton("More..", "more", moreButtonScale, false,
                  _moreButtonController),
              const SizedBox(width: 16), // Add spacing

              _buildButton("Book now", "bookNow", bookNowScale, true,
                  _bookNowButtonController),

              SizedBox(
                width: MediaQuery.of(context).size.width * .016,
              )
            ],
          )
        ],
      ),
    );
  }

  void _tapDown(TapDownDetails details, String buttonTpye) {
    if (buttonTpye == "more") {
      _moreButtonController!.forward();
    } else if (buttonTpye == "bookNow") {
      _bookNowButtonController!.forward();
    }
  }

  void _tapUp(TapUpDetails details, String buttonTpye) {
    if (buttonTpye == "more") {
      _moreButtonController!.reverse();
    } else if (buttonTpye == "bookNow") {
      _bookNowButtonController!.reverse();
    }
  }

  Widget _buildButton(String text, String buttonTpye, double scale,
      bool isbookButton, AnimationController? controller) {
    return GestureDetector(
      onTapDown: (details) {
        _tapDown(details, buttonTpye);
      },
      onTapUp: (details) {
        _tapUp(details, buttonTpye);
      },
      child: Transform.scale(
        scale: scale ?? 1.0,
        child: Container(
          width: isbookButton == true
              ? MediaQuery.of(context).size.width * .23
              : MediaQuery.of(context).size.width * .17,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey[300], // Gray background
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.blue, // Change the color
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
