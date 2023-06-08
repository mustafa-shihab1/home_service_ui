import 'package:final_project/constants/constants.dart';
import 'package:final_project/widgets/flx_service_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 280,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: flx_service_app_bar(),
      ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Select Service',style: TextStyle(color:ColorConstants.primaryColor1,fontSize: 18 ),),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 400,
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 30),
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.airCond,width: 60,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.light,width: 35,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.water,width: 40,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.bug,width: 45,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.clean,width: 30,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.saw,width: 40,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.twoSettings,width: 40,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.clean,width: 30,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.saw,width: 40,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.airCond,width: 60,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.light,width: 35,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF1A8D1),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(IconConstants.water,width: 40,color: ColorConstants.primaryColor1,),
                                const SizedBox(height: 10,),
                                const Text('Carpenter',style: TextStyle(color:ColorConstants.primaryColor1,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
