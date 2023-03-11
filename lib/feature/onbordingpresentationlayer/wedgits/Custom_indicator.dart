import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({ Key? key,required this.dotindex }) : super(key: key);
final double? dotindex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(dotsCount: 3,position:dotindex!,);
  }
}