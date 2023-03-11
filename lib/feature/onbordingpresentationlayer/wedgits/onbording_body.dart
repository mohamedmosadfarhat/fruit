import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled12/core/utils/sizeconfg.dart';
import 'package:untitled12/core/wedgits/custombuttons.dart';
import 'package:untitled12/feature/Auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:untitled12/feature/onbordingpresentationlayer/wedgits/Custom_indicator.dart';
import 'package:untitled12/feature/onbordingpresentationlayer/wedgits/custom_Page_view.dart';
// import 'package:newecommerce/core/utils/sizeconfg.dart';
// import 'package:newecommerce/core/wedgits/custombuttons.dart';
// import 'package:newecommerce/feature/onbordingpresentationlayer/wedgits/Custom_indicator.dart';
// import 'package:newecommerce/feature/onbordingpresentationlayer/wedgits/custom_Page_view.dart';

import '../../Auth/presentation/pages/login/login_view.dart';

class OnbordinBody extends StatefulWidget {
  const OnbordinBody({ Key? key }) : super(key: key);

  @override
  _OnbordinBodyState createState() => _OnbordinBodyState();
}

class _OnbordinBodyState extends State<OnbordinBody> {
   PageController? pageController;
  @override
   void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: SizeConfig.defaultSize!*22,
          left: 0,
          right: 0,
          child: CustomIndicator(dotindex: pageController!.hasClients ? pageController?.page : 0,)
        ),
        CustomPageView(
          pageController:pageController,),
        Visibility(
        visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,

          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff898989),
                  ),
                  textAlign: TextAlign.left,
                ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize!*10,
          left: SizeConfig.defaultSize!*10,
          right: SizeConfig.defaultSize!*10,
          
          child: GeneralCustomButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                 // Get.to(() => LoginView(), transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                  Get.to(() => CompleteInformationView(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft);


                }
              },
            
            
            text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
         
        )
          )

      ],
    );
}
}