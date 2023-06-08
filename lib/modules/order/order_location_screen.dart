import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/order/order_done_screen.dart';
import 'package:final_project/widgets/app_bar_custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OrderLocationScreen extends StatefulWidget {
  const OrderLocationScreen({Key? key}) : super(key: key);

  @override
  State<OrderLocationScreen> createState() => _OrderLocationScreenState();
}

class _OrderLocationScreenState extends State<OrderLocationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Location',style: TextStyle(fontSize: 22),),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
            onPressed: (){},
          ),
          centerTitle: true,
          toolbarHeight: 120,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: AppBarCustomClipper(
                left_side: 40,
                right_side: 40
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: GradientConstants.gradient2
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/map.png',fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'More Details About Location ....',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    )
                ),
                SizedBox(height: 30,),
                IntlPhoneField(
                  disableLengthCheck: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                  ),
                ),
                SizedBox(height: 110,),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DoneOrderScreen(),));

                        },
                        child:const Text('ADD ORDER',
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
        )
    );
  }
}
