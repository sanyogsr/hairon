import 'package:flutter/material.dart';
import 'package:hairon/core/styling/theme/style.dart';
import 'package:hairon/features/Salon/presentation/widgets/pageviews/pageview_widgets/service_item_widget.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({Key? key}) : super(key: key);

  @override
  _ServiceWidgetState createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
// AnimationController? _animationController;

  List serviceHaircutNameLists = [
    "Standard",
    "Jazzy",
    "Aesthetic",
    "Long hair"
  ];
  List serviceHaircutPriceLists = ["100", "150", "130", "150"];
  List serviceHairColorNameLists = [
    "Black",
    "light Blue",
    "Cream",
    "Yellowish"
  ];
  List serviceHairColorPriceLists = ["90", "290", "200", "250"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fadeColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .02,
                left: 15,
                bottom: 10),
            child: Text("Haircuts",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
          ),
          const SizedBox(
            height: 5,
          ),
          serviceItem(
              serviceNameList: serviceHaircutNameLists,
              servicePriceList: serviceHaircutPriceLists),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .02,
                left: 15,
                bottom: 10),
            child: Text("Hair Color",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
          ),
          serviceItem(
              serviceNameList: serviceHairColorNameLists,
              servicePriceList: serviceHairColorPriceLists),
        ],
      ),
    );
  }

  Widget serviceItem({
    required List serviceNameList,
    required List servicePriceList,
  }) {
    ;
    return Container(
        height: 80 * serviceNameList.length.toDouble(),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: serviceNameList.length,
            itemBuilder: (context, index) {
              return ServiceItemWidget(
                  serviceNameList: serviceNameList,
                  servicePriceList: servicePriceList,
                  index: index);
            }));
  }
}
