import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/login/login_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
           Container(
            decoration: const BoxDecoration(
                gradient:  GradientConstants.gradient2
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(30),
                      topEnd: Radius.circular(30),
                    )
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/images/mypic.png',),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    const SizedBox(width: 18,),
                    const Text('Mustafa N. Shihab',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    Image.asset('assets/images/edit.png',width: 18,color: ColorConstants.primaryColor1,)
                  ],
                ),
                const SizedBox(height: 10,),
                Text('Gaza, Palestine',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  color: Colors.grey[600]
                ),),
                const SizedBox(height: 30,),
                Container(
                  color: const Color(0xFFEAEFF5),
                  width: 420,
                  height: 5,
                ),
                const SizedBox(height: 50,),
                Row(
                  children: [
                    const Text('Language',style: TextStyle(fontSize: 18),),
                    const SizedBox(width: 210,),
                    Text('English',style: TextStyle(fontSize: 18,color: Colors.grey[400]),),
                    Icon(Icons.keyboard_arrow_right,color: Colors.grey[400],size: 25,),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Text('My Rates',style: TextStyle(fontSize: 18),),
                    const SizedBox(width: 277,),
                    Icon(Icons.keyboard_arrow_right,color: Colors.grey[400],size: 25,),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Text('Contact Us',style: TextStyle(fontSize: 18),),
                    const SizedBox(width: 263,),
                    Icon(Icons.keyboard_arrow_right,color: Colors.grey[400],size: 25,),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Text('Share App',style: TextStyle(fontSize: 18),),
                    const SizedBox(width: 263,),
                    Icon(Icons.keyboard_arrow_right,color: Colors.grey[400],size: 25,),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  color: const Color(0xFFEAEFF5),
                  width: 420,
                  height: 5,
                ),
                SizedBox(
                  height: 60,
                  width: 400,
                  child: InkWell(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginTabScreen(),)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(image: AssetImage('assets/images/sign_out.png',),width: 18,color: Color(0xFFC2A172),),
                        SizedBox(width: 7,),
                        Text('SIGN OUT',style: TextStyle(color:ColorConstants.primaryColor1,fontSize: 16 ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xFFEAEFF5),
                  width: 420,
                  height: 5,
                ),

              ],
            ),
          ),
          Positioned(
            top: 50,
              right: 20,
              child: IconButton(
                icon: SvgPicture.asset(IconConstants.settings,),
                onPressed: (){},),
          ),
        ],
      ),
    );
  }
}
