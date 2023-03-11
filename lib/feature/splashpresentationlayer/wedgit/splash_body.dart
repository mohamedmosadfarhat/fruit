import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
//import 'package:newecommerce/feature/onbordingpresentationlayer/onbording_view.dart';
import 'package:untitled12/feature/onbordingpresentationlayer/onbording_view.dart';

import '../../../core/utils/sizeconfg.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({ Key? key }) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
   AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  } 
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Container(
      child: Column(children: [
       Spacer(),
        FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        //  AnimatedBuilder(
        //    animation: fadingAnimation!,
        //    builder:(context,  _) =>Opacity(
        //            opacity: fadingAnimation!.value,
        //            child: Text(
        //                   'Fruit Market',
        //                   style: TextStyle(
        //                     fontFamily: 'Poppins',
        //                     fontSize: 51,
        //                     fontWeight: FontWeight.bold,
        //                     color: const Color(0xffffffff),
        //                   ),
        //                 ),
        //          ),
        //  ),
          // }
         //),
         
        
            Image.asset("assets/images/splash.png")
      ]),
    );
  }
}
void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
    // Get.to(OnbordingView());
      Get.to(() => OnbordingView(), transition: Transition.fade);
    });
  }