import 'package:final_project/constants/constants.dart';
import 'package:final_project/models/button_navbar_model.dart';
import 'package:final_project/modules/home/screens/more_screen.dart';
import 'package:final_project/modules/home/screens/orders_screen.dart';
import 'package:final_project/modules/home/screens/services_screen.dart';
import 'package:final_project/modules/home/screens/user_screen.dart';
import 'package:final_project/widgets/app_bar_custom_clipper.dart';
import 'package:final_project/widgets/flx_service_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({Key? key}) : super(key: key);

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int current_index = 0;
  List<BtmNavBarModel> screenModel = [
    BtmNavBarModel(ServicesScreen(),),
    BtmNavBarModel(OrdersScreen()),
    BtmNavBarModel(UserScreen()),
    BtmNavBarModel(MoreScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenModel.elementAt(current_index).screen,
      bottomNavigationBar: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: 71.5,
            child: Row(
              children: [
                //Color(0xFFF1A8D1)
                Expanded(child: Container(
                  color: current_index==0?Colors.black:Colors.white,
                )),
                Expanded(child: Container(

                  color: current_index==1?Colors.black:Colors.white,
                )),
                Expanded(child: Container(
                  color: current_index==2?Colors.black:Colors.white,
                )),
                Expanded(child: Container(
                  color: current_index==3?Colors.black:Colors.white,
                )),
              ],
            ),
          ),
          Container(
            height: 70,
            child: BottomNavigationBar(
              backgroundColor: ColorConstants.primaryColor2,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: current_index,
              onTap: (index) {
                setState(() {
                  current_index = index;
                });
              },
  items: [
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/home_service.png', width: 35,),
                    label: 'Service',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(IconConstants.orders, width: 25,),
                    label: 'Orders',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(IconConstants.user, width: 25,),
                    label: 'User',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(IconConstants.more, width: 30,),
                    label: 'More',
                  ),
                ],),
          ),
        ],
      )
    );
  }
}

