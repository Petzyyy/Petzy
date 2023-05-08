import 'package:flutter/material.dart';
import 'package:pet_user_app/Theme/nativeTheme.dart';
import 'package:pet_user_app/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static dynamic analytics;
  static dynamic observer;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: nativeTheme(),
        home: SplashScreen(
          a: analytics,
          o: observer,
        ));
  }
}
//jnbhkjb