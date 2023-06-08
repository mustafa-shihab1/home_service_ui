import 'package:final_project/constants/constants.dart';
import 'package:final_project/widgets/app_bar_custom_clipper.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);
  List<String> _tab_names = [
   'Change Password','FAQ\'s','About App',
   'Terms & Conditions','Privacy Policy',
   'Rate App','Delete Account',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More',style: TextStyle(fontSize: 22),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 30,),
          itemBuilder:
              (context, index) => Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Text(_tab_names[index],style: TextStyle(fontSize: 18),),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right,color: Colors.grey[400],size: 25,),
                  ],
                ),
              ),
          itemCount: _tab_names.length,

        ),
      ),
    );
  }
}
