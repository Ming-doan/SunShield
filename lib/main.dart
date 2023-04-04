import 'package:flutter/material.dart';
import 'package:sun_shield/screens/main_page.dart';
import 'package:sun_shield/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SunShield',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: ColorPalette.primaryColor),
      home: const SafeArea(child: MainPage()),
    );
  }
}
