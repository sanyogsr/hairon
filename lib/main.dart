import 'package:flutter/material.dart';
import 'package:hairon/features/Authentication/presentation/pages/signup_screen.dart';
import 'package:hairon/config/on_generate_route.dart';

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
          return const SignupScreen();
        }
      },
      initialRoute: "/",
    );
  }
}
