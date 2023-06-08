import 'package:final_project/constants/constants.dart';
import 'package:final_project/modules/order/order_issue_screen.dart';
import 'package:final_project/widgets/app_bar_custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class flx_service_app_bar extends StatelessWidget {

  const flx_service_app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppBarCustomClipper(
        right_side: 70,
        left_side: 70
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: GradientConstants.gradient2
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 60),
              child: Stack(
                children: [
                  const Align(alignment: AlignmentDirectional.topCenter,child: Image(image: AssetImage('assets/images/home_service.png'),width: 80)),
                  Align(alignment: AlignmentDirectional.topEnd,child: Container(margin: EdgeInsets.only(right: 20),child: SvgPicture.asset(IconConstants.notification,width: 23),),)
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: ClipPath(
                clipper: ShapeBorderClipper(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => OrderIssueScreen(),));
                  },
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 80,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
