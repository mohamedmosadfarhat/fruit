import 'package:flutter/material.dart';

import '../../../core/utils/sizeconfg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
       // const VerticalSpace(18),
       SizedBox(height: SizeConfig.defaultSize!*15,),
        SizedBox(
            height: SizeConfig.defaultSize! * 25, child: Image.asset(image!)),
       // const VerticalSpace(2.5),
        SizedBox(height: SizeConfig.defaultSize!*2,),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
       // const VerticalSpace(1),
        SizedBox(height: SizeConfig.defaultSize!*3,),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
