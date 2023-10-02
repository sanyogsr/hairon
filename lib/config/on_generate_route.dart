import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hairon/config/route_constants.dart';
import 'package:hairon/features/layout/presentation/pages/mobile_screen_layout.dart';
import 'package:hairon/features/appointments/presentation/pages/appointment_screen.dart';
import 'package:hairon/features/Authentication/presentation/pages/signup_screen.dart';
import 'package:hairon/features/discover/presentation/pages/discover_screen.dart';
import 'package:hairon/features/Home/presentation/pages/home_screen.dart';
import 'package:hairon/features/profile/presentation/pages/profile_screen.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        {
          return materialBuilder(widget: SignupScreen());
        }
      case PageConst.mobileScreenLayout:
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
