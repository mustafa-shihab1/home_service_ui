import 'package:final_project/models/on_boarding_model.dart';
import 'package:final_project/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController= PageController();

  bool isLast = false;

  List<OnBoardingModel> boarding = [
    OnBoardingModel(image: 'assets/images/img_1.png'),
    OnBoardingModel(image: 'assets/images/img_2.png'),
    OnBoardingModel(image: 'assets/images/img_1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (index) {
            if(index==boarding.length-1){
              setState(() {
                isLast = true;
              });
            }else{
              setState(() {
                isLast = false;
              });
            }
          },
          controller: boardController,
          physics:const BouncingScrollPhysics(),
          itemBuilder:(context, index) => onBoradingItem(
              boarding[index],
              boardController,
              isLast,
              context,
          ),
          itemCount: boarding.length,
        ),
      ),
    );
  }
}


