import 'package:degreeapp/screens/frist_screen.dart';
import 'package:degreeapp/screens/therd_scrren.dart';
import 'package:degreeapp/screens/welcome_screen.dart';
import 'package:degreeapp/style/theme_data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calc Your Degree",
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        TheredScreen.id: (context) => TheredScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScren.id: (context) => HomeScren()
      },
    );
  }
}
