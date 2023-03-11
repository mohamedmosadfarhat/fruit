import 'package:flutter/material.dart';
import 'package:untitled12/core/utils/sizeconfg.dart';
//import 'package:newecommerce/core/utils/sizeconfg.dart';

import '../consts.dart';

class GeneralCustomButton extends StatelessWidget {
  const GeneralCustomButton({ Key? key, this.text, this.onTap, }) : super(key: key);
   
final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
  
    return GestureDetector(
      onTap: onTap,
      child: Container(
       // height: SizeConfig.defaultSize!*10,
       // height: SizeConfig.screenHeight,
       // width: 300,
       // width: SizeConfig.defaultSize!*100,
        decoration: BoxDecoration(
          color:  kMainColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
             text! ,
                style: TextStyle(  color: Colors.white,fontSize: 30),
      
        ),
        ),
      ),
    );
  }
}


class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {Key? key, required this.text, this.onTap, this.iconData, this.color})
      : super(key: key);
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color(0xFF707070),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
           // HorizintalSpace(2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
  