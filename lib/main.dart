import 'package:final_project/modules/order/order_issue_screen.dart';
import 'package:final_project/modules/order/order_location_screen.dart';
import 'package:final_project/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'NunitoSans',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
