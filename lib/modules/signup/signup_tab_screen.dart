
import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/login/login_tab_screen.dart';
import 'package:final_project/widgets/text_and_pass_fields.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpTabScreen extends StatefulWidget {
  const SignUpTabScreen({super.key});

  @override
  State<SignUpTabScreen> createState() => _SignUpTabScreen();
}

class _SignUpTabScreen extends State<SignUpTabScreen> {
  bool _value = false;
  String dropdownValue = 'service1';

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient:  GradientConstants.gradient2
        ),
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80,bottom: 50,left: 20),
              child: Align(alignment: AlignmentDirectional.centerStart,
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(7)
                ),
                  child: IconButton(icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),onPressed: (){},),
              ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          const TabBar(
                              indicatorColor: ColorConstants.primaryColor1,
                              unselectedLabelColor: Color(0xFF646781),
                              labelColor: ColorConstants.primaryColor1,
                              indicatorPadding: EdgeInsets.symmetric(horizontal: 75),
                              tabs: [
                                Tab(text: 'Service Provider'),
                                Tab(
                                  text: 'Customer',
                                )
                              ]),
                          Expanded(
                            child: TabBarView(
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30,),
                                        const DefaultTextField(
                                          hint: "Full Name",
                                          input_type: TextInputType.text,
                                        ),
                                        const SizedBox(height: 15,),
                                        const DefaultTextField(
                                          hint: "Email",
                                          input_type: TextInputType.emailAddress,
                                        ),
                                        const SizedBox(height: 15,),
                                        SizedBox(
                                          child: IntlPhoneField(
                                            disableLengthCheck:true,
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(vertical: 15),
                                              hintText: 'Phone Number',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15,),
                                        const PasswordField(),
                                        const SizedBox(height: 30,),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _value = !_value;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:_value?const Color(0xFF0E4DFB): Colors.white,
                                                    border: _value?Border.all(width: 0):Border.all(width: 1)
                                                ),
                                                child: _value
                                                    ? const Icon(
                                                  Icons.check,
                                                  size: 15.0,
                                                  color: Colors.white,
                                                )
                                                    : const Icon(
                                                  Icons.check,
                                                  size: 15.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              const Text('I Read and Accept ',style: TextStyle(fontSize: 12),),
                                              const Text('Home Service Terms & Conditions',style: TextStyle(fontSize: 12,color:Color(0xFF0E4DFB) ),),

                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 40,),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text('Have Account?',style: TextStyle(fontSize: 16,height: 1.5),),
                                                TextButton(
                                                  child: const Text('SIGN IN',style: TextStyle(
                                                      color: Color(0xFF0E4DFB),
                                                      fontSize: 16,
                                                      decoration: TextDecoration.underline,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  ),
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginTabScreen(),));
                                                  },
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                  gradient: GradientConstants.gradient1,
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              child: TextButton(

                                                onPressed: () {
                                                  // Add your button press logic here
                                                },
                                                child:const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                                                  child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30,),
                                        const DefaultTextField(
                                          hint: "Full Name",
                                          input_type: TextInputType.text,
                                        ),
                                        const SizedBox(height: 15,),
                                        const DefaultTextField(
                                          hint: "Email",
                                          input_type: TextInputType.emailAddress,
                                        ),
                                        const SizedBox(height: 15,),
                                        SizedBox(
                                          child: IntlPhoneField(
                                            disableLengthCheck:true,
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(vertical: 15),
                                              hintText: 'Phone Number',
                                              border: OutlineInputBorder(

                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15,),
                                        const PasswordField(),
                                        const SizedBox(height: 15,),
                                        DropdownButton<String>(
                                          // Step 3.
                                          value: dropdownValue,
                                          isExpanded: true,

                                          hint: Text('Select Service'),
                                          style: TextStyle(color: Colors.grey,fontSize: 18),
                                          // Step 4.
                                          items: <String>['service1', 'service2', 'service3']

                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                              ),

                                            );
                                          }).toList(),
                                          // Step 5.
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                        ),
                                        const SizedBox(height: 30,),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _value = !_value;
                                            });
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:_value?const Color(0xFF0E4DFB): Colors.white,
                                                    border: _value?Border.all(width: 0):Border.all(width: 1)
                                                ),
                                                child: _value
                                                    ? const Icon(
                                                  Icons.check,
                                                  size: 15.0,
                                                  color: Colors.white,
                                                )
                                                    : const Icon(
                                                  Icons.check,
                                                  size: 15.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(width: 5,),
                                              const Text('I Read and Accept ',style: TextStyle(fontSize: 12),),
                                              const Text('Home Service Terms & Conditions',style: TextStyle(fontSize: 12,color:Color(0xFF0E4DFB) ),),

                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 40,),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                const Text('Have Account?',style: TextStyle(fontSize: 16,height: 1.5),),
                                                TextButton(
                                                  child: const Text('SIGN IN',style: TextStyle(
                                                      color: Color(0xFF0E4DFB),
                                                      fontSize: 16,
                                                      decoration: TextDecoration.underline,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  ),
                                                  onPressed: (){
                                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginTabScreen(),));
                                                  },
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                  gradient: GradientConstants.gradient1,
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                              child: TextButton(

                                                onPressed: () {
                                                  // Add your button press logic here
                                                },
                                                child:const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                                                  child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),



                                ]
                            ),
                          ),

                        ],
                      ),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
