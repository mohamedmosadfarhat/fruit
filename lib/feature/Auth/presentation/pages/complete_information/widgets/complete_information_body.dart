// import 'package:flutter/material.dart';
// import 'package:fruits_market/core/widgets/custom_buttons.dart';
// import 'package:fruits_market/core/widgets/custom_text_field.dart';
// import 'package:fruits_market/core/widgets/space_widget.dart';
// import 'package:fruits_market/features/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:newecommerce/core/utils/sizeconfg.dart';
//import 'package:newecommerce/core/wedgits/custombuttons.dart';
//import 'package:newecommerce/feature/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';
import 'package:untitled12/core/utils/sizeconfg.dart';
import 'package:untitled12/core/wedgits/custombuttons.dart';
import 'package:untitled12/feature/Auth/presentation/pages/complete_information/widgets/complete_information_item.dart';
import 'package:untitled12/feature/Auth/presentation/pages/home_page.dart';
import 'package:get/route_manager.dart';
class CompleteInformationBody extends StatelessWidget {
   CompleteInformationBody({Key? key}) : super(key: key);
   final _textController1 = TextEditingController();
   final _textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
           // VerticalSpace(10),
           SizedBox(height: SizeConfig.defaultSize!*6,),
            CompleteInfoItem(
             // _textController1,
              text: 'Enter your name', conrol2: _textController1,
            ),
           // VerticalSpace(2),
           SizedBox(height: SizeConfig.defaultSize!*6,),
      
            CompleteInfoItem(

              text: 'Enter your phone number', conrol2: _textController2,
            ),
          //  VerticalSpace(2),
           SizedBox(height: SizeConfig.defaultSize!*6,),
      
            // CompleteInfoItem(
            //
            //   maxLines: 5,
            //   text: 'Enter your address',
            // ),
           SizedBox(height: SizeConfig.defaultSize!*6,),
           // VerticalSpace(5),
            GeneralCustomButton(
              onTap: () async {
                // print(_textController1);
                // print(_textController2);
    try{
    String email=_textController1.text;
    String password=_textController2.text;



    UserCredential userCredential =await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email, password: password);
    // print(userCredential);
     Get.offAll(Homepage());

    }
    on FirebaseAuthException catch(e){
    if(e.code=="weak-password"){
    print("weak passord");

    }
    else if(e.code=="email-already-in-use"){
    print("already exist");

    }
    }
    catch(e){

    //print(e);
    print("asdfghjjhgfdddddddddd") ;





    }
    },

//=======================
            //  },
              text: 'signup',
            )
          ],
        ),
      ),
    );
  }
}
