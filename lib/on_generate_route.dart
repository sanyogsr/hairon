import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hairon/constants.dart';
import 'package:hairon/features/presentation/Layouts/mobile_screen_layout.dart';
import 'package:hairon/features/presentation/screens/appointment_screen.dart';
import 'package:hairon/features/presentation/screens/discover_screen.dart';
import 'package:hairon/features/presentation/screens/home_screen.dart';
import 'package:hairon/features/presentation/screens/profile_screen.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        {
          return materialBuilder(widget: MobileScreenLayout());
        }
      case PageConst.homeScreen:
        {
          return materialBuilder(widget: HomeScreen());
        }
      case PageConst.discoverScreen:
        {
          return materialBuilder(widget: DiscoverScreen());
        }
      case PageConst.appointmentScreen:
        {
          return materialBuilder(widget: AppointmentScreen());
        }
      case PageConst.profileScreen:
        {
          return materialBuilder(widget: ProfileScreen());
        }

      default:
        return materialBuilder(widget: ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Aagya yrr"),
      ),
      body: Container(
        child: Center(
          child: Text('Error Page'),
        ),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
