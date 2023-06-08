import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context,MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: GradientConstants.gradient1
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(flex: 1,child: Container()),
                const Expanded(flex: 2,child: Image(image: AssetImage('assets/images/logo.png'),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
