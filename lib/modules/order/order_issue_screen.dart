import 'dart:io';

import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/order/order_location_screen.dart';
import 'package:final_project/widgets/app_bar_custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OrderIssueScreen extends StatefulWidget {
  const OrderIssueScreen({Key? key}) : super(key: key);

  @override
  State<OrderIssueScreen> createState() => _OrderIssueScreenState();
}

class _OrderIssueScreenState extends State<OrderIssueScreen> {

  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    var img = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage();
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smith',style: TextStyle(fontSize: 22),),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadiusDirectional.circular(5)
                ),
                child: TextButton(
                  onPressed: () {
                    myAlert();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/add-image.png',width: 22,color: Colors.grey,),
                        SizedBox(width: 100,),
                        Text('Image Problem',style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('image must be no more than 2 MB Max 5 Image',style: TextStyle(color: Colors.grey),),
            SizedBox(
              height: 10,
            ),
            image != null
                ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(
                  //to show image, you type like this.
                  File(image!.path),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                ),
              ),
            )
                : Text(
              "No Image",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                maxLines: 5,

                decoration: InputDecoration(
                  hintText: 'More Details About Problem ....',
                    hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 40,
                left: 40,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderLocationScreen(),));
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
        ),
      )
    );
  }
}
