import 'package:flutter/material.dart';
import 'package:hairon/features/presentation/Layouts/mobile_screen_layout.dart';
import 'package:hairon/on_generate_route.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final String onFilePath = "./.env";
  await dotenv.load(fileName: onFilePath);

  String? supabaseUrl = dotenv.env['SUPABASE_URL'];
  String? supabaseKey = dotenv.env['SUPABASE_KEY'];
  await Supabase.initialize(url: supabaseUrl!, anonKey: supabaseKey!);
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
          return MobileScreenLayout();
        }
      },
      initialRoute: "/",
      // home: HomeScreen(),
    );
  }
}
