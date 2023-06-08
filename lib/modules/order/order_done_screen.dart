import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/home/layout/home_layout.dart';
import 'package:flutter/material.dart';

class DoneOrderScreen extends StatelessWidget {
  const DoneOrderScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          const Image(image: AssetImage('assets/images/done_order.png')),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height:90,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ORDER ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
                    Text('DONE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xFF0E4DFB)),),
                    Text('!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color(0xFFAF8344)),),
                  ],
                ),
                const SizedBox(height: 10,),
                Text('The ORDER has been sent. A technician will\ncontact you',style: TextStyle(color: Colors.grey[700]),textAlign: TextAlign.center,),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: GradientConstants.gradient1,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLayoutScreen(),));
                        },
                        child:const Text('GO TO HOME',
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
            ),
          ),
        ],
      ),
    );
  }
}
