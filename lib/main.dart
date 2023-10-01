import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/screens/auth/signup_screen.dart';
import 'package:hairon/on_generate_route.dart';

Future<void> main() async {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hairon',
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: OnGenerateRoute.route,
      debugShowCheckedModeBanner: false,

      routes: {
        "/": (context) {
          return SignupScreen();
        }
      },
      initialRoute: "/",
      // home: SignupScreen(),
    );
  }
}
