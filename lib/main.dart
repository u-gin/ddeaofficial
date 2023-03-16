import 'package:ddea_official/confirm_account_screen.dart';
import 'package:ddea_official/create_account_screen.dart';
import 'package:ddea_official/firebase_options.dart';
import 'package:ddea_official/home_screen.dart';
import 'package:ddea_official/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'landing_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DDEA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        LandingScreen.routeName: (context) => const LandingScreen(
              currentIndex: 0,
            ),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: LandingScreen.routeName,
      onGenerateRoute: (RouteSettings settings) {
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return null;
      },
    );
  }
}
