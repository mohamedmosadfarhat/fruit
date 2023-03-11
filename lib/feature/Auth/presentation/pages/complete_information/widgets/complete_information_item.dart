// import 'package:flutter/cupertino.dart';
// import 'package:fruits_market/core/widgets/custom_text_field.dart';
// import 'package:fruits_market/core/widgets/space_widget.dart';

import 'package:flutter/material.dart';
import 'package:untitled12/core/wedgits/custom_text_field.dart';
//import 'package:newecommerce/core/wedgits/custom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  CompleteInfoItem( {Key? key, required this.text, this.inputType, this.maxLines,required this.conrol2})
 // const
      : super(key: key);
  // final _textController1 = TextEditingController();
  //  final _textController2 = TextEditingController();
  var conrol2;
  final String text;
  final TextInputType? inputType;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
       //VerticalSpace(2),
        CustomTextFormField(
          // CustomTextFormField.control,
          control:conrol2 ,
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
