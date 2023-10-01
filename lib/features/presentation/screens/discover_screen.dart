// // import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:hairon/features/presentation/widgets/discoverscreen/salon_card.dart';
import 'package:hairon/features/presentation/widgets/styling/theme/style.dart';

// class DiscoverScreen extends StatefulWidget {
//   const DiscoverScreen({Key? key}) : super(key: key);

//   @override
//   State<DiscoverScreen> createState() => _DiscoverScreenState();
// }

// class _DiscoverScreenState extends State<DiscoverScreen> {
//   bool showLeadingIcon = false;
//   final ScrollController _scrollController = ScrollController();

//    @override
//   void initState() {

//      super.initState();
//      _scrollController.addListener(_handleScroll);

//    }

//   @override
//   void dispose() {
//      _scrollController.removeListener(_handleScroll);
//      _scrollController.dispose();
//     super.dispose();
//   }

//   void _handleScroll() {
//     if(_scrollController.offset >2){
//       setState(() {
//         showLeadingIcon = true;
//       });
//     }
//     else{
//       setState(() {
//         showLeadingIcon = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: RectangularFAB(),
//       backgroundColor: Colors.grey[200], // Use your desired background color
//       body: CustomScrollView(
//         controller: _scrollController,
//         physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
//         slivers: <Widget>[
//           SliverAppBar(
//             scrolledUnderElevation: 1,
//             leading: AnimatedOpacity(
//                 opacity: showLeadingIcon? 1.0 : 0.0,
//                 duration: Duration(seconds: 1),
//                 child: IconButton(onPressed: (){}, icon: Icon(FeatherIcons.filter, color: blackColor,))),
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     FeatherIcons.search,
//                     color: Colors.black,
//                   ))
//             ],
//             backgroundColor: Colors.white,
//             floating:
//                 false, // Set to true if you want it to stay at the top while scrolling
//             pinned:
//                 true, // Set to true if you want it to remain pinned at the top
//             expandedHeight: 0.0, // Adjust this height as needed
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(
//                     color:
//                         Colors.black.withOpacity(.4), // Adjust the line color
//                     width: 0.5, // Adjust the line thickness
//                   ),
//                 ),
//               ),
//               child: FlexibleSpaceBar(
//                 centerTitle: true,
//                 title: Text(
//                   'Discover',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               color: Colors.white, // Adjust background color as needed
//               child: _discoverUpperRow(),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return salonCard();
//               },
//               childCount: 10, // Replace with your item count
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _discoverUpperRow() {
//     return Container(
//       color: whiteColor,
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           _discoverUpperRowElements(
//             icon: Image.asset(
//               'assets/man.png',
//               width: 25,
//               height: 25,
//             ),
//             fontSize: 14,
//             title: "Haircut",
//           ),
//           _discoverUpperRowElements(
//             icon: Icon(
//               FeatherIcons.calendar,
//               size: 21,
//               color: primaryColor,
//             ),
//             fontSize: 14,
//             title: "Any date",
//           ),
//           _discoverUpperRowElements(
//             fontSize: 14,
//             icon: Icon(
//               FeatherIcons.filter,
//               size: 21,
//               color: primaryColor,
//             ),
//             title: "Filter",
//           )
//         ],
//       ),
//     );
//   }

//   Widget _discoverUpperRowElements({required Widget icon, required String title, required double fontSize}) {
//     return Column(
//       children: [
//         icon,
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           title,
//           style: TextStyle(color: Colors.black, fontSize: fontSize),
//         )
//       ],
//     );
//   }
// }

// class RectangularFAB extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(

//       onPressed: () {
//         // Add your FAB button's onPressed logic here
//       },
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15.0), // Adjust the border radius
//       ),
//       backgroundColor: primaryColor, // Customize the FAB color
//       child: Icon(FeatherIcons.map), // Customize the FAB icon
//     );
//   }
// }

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  bool showLeadingIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            scrolledUnderElevation: 1,
            leading: AnimatedOpacity(
              opacity: showLeadingIcon ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FeatherIcons.filter,
                  color: blackColor,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FeatherIcons.search,
                  color: Colors.black,
                ),
              ),
            ],
            backgroundColor: Colors.white,
            floating: false,
            pinned: true,
            expandedHeight: 60.0, // Adjust this height as needed
            flexibleSpace: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(.4),
                    width: 0.5,
                  ),
                ),
              ),
              child: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Discover',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _discoverUpperRow(),
          ),
          SliverList(
            
            delegate: SliverChildBuilderDelegate(
              
              (BuildContext context, int index) {
                return salonCard(); // Replace with your custom card widget
              },
              childCount: 10, // Replace with your item count
            ),
          ),
        ],
      ),
    );
  }

  Widget _discoverUpperRow() {
    return Container(
      color: whiteColor,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _discoverUpperRowElements(
            icon: Image.asset(
              'assets/man.png',
              width: 25,
              height: 25,
            ),
            fontSize: 14,
            title: "Haircut",
          ),
          _discoverUpperRowElements(
            icon: Icon(
              FeatherIcons.calendar,
              size: 21,
              color: primaryColor,
            ),
            fontSize: 14,
            title: "Any date",
          ),
          _discoverUpperRowElements(
            fontSize: 14,
            icon: Icon(
              FeatherIcons.filter,
              size: 21,
              color: primaryColor,
            ),
            title: "Filter",
          )
        ],
      ),
    );
  }

  Widget _discoverUpperRowElements({
    required Widget icon,
    required String title,
    required double fontSize,
  }) {
    return Column(
      children: [
        icon,
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: fontSize),
        )
      ],
    );
  }
}
