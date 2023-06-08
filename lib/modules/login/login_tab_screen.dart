import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/home/layout/home_layout.dart';
import 'package:final_project/modules/signup/signup_tab_screen.dart';
import 'package:final_project/widgets/text_and_pass_fields.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginTabScreen extends StatefulWidget {
  const LoginTabScreen({super.key});
  @override
  State<LoginTabScreen> createState() => _LoginTabScreen();
}

class _LoginTabScreen extends State<LoginTabScreen> {
  bool _value_rmmbr_me = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: GradientConstants.gradient1
        ),
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 75.0, bottom: 40),
              child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Image(
                    image: AssetImage('assets/images/home_service.png'),
                    width: 160,
                  )),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
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
                          child: TabBarView(children: [
                            LoginForm(context),
                            LoginForm(context),
                          ]),
                        )
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

  Center LoginForm(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          IntlPhoneField(
            disableLengthCheck: true,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Phone Number',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          PasswordField(),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _value_rmmbr_me = !_value_rmmbr_me;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _value_rmmbr_me
                          ? const Color(0xFF0E4DFB)
                          : Colors.white,
                      border: _value_rmmbr_me
                          ? Border.all(width: 0)
                          : Border.all(width: 1)),
                  child: _value_rmmbr_me
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
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      _value_rmmbr_me = !_value_rmmbr_me;
                    });
                  },
                  child: const Text(
                    'Remember me',
                    style: TextStyle(fontSize: 14),
                  )),
              const Spacer(),
              TextButton(
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New Member?',
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  TextButton(
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Color(0xFF0E4DFB),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpTabScreen(),
                          ));
                    },
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    gradient: GradientConstants.gradient1,
                    borderRadius: BorderRadius.circular(5)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeLayoutScreen(),),(route) =>false ,);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                'Get Start Now',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward,
                size: 18,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
