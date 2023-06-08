import 'package:final_project/constants/constants.dart';
import 'package:final_project/models/on_boarding_model.dart';
import 'package:final_project/modules/login/login_tab_screen.dart';
import 'package:flutter/material.dart';

Widget onBoradingItem(OnBoardingModel model,
    PageController controller,
    bool isLast,
    BuildContext context) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    const Spacer(),
    Image(
      image: AssetImage(model.image),
    ),
    const SizedBox(height: 15,),
    Text(
      'Fast reservation with technicians\nand craftsmen',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: const Color(0xFF0E9CF9),
      )
    ),
    const Spacer(),
    Padding(
      padding: const EdgeInsets.only(
          right: 40,
          left: 40,
          bottom: 30
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: GradientConstants.gradient1,
            borderRadius: BorderRadius.circular(5)
        ),
        child: TextButton(
            onPressed: (){
              if(isLast) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginTabScreen(),));
              }else {
                controller.nextPage(
                    duration:const Duration(
                        microseconds: 750
                    ),
                    curve: Curves.fastLinearToSlowEaseIn
                );
              }
            },
            child:const Text('NEXT',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            )
        ),
      ),
    ),
  ],
);