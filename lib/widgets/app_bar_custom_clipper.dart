import 'package:flutter/material.dart';

class AppBarCustomClipper extends CustomClipper<Path> {
  final int left_side;
  final int right_side;
  @override
  Path getClip(Size size) {

  double height = size.height;
  double width = size.width;
  var path = Path();
  path.lineTo(0, height - left_side);
  path.quadraticBezierTo(width / 2, height, width, height - right_side);
  path.lineTo(width, 0);
  path.close();
  return path;
  }

  AppBarCustomClipper({this.left_side=0,this.right_side=0});

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}