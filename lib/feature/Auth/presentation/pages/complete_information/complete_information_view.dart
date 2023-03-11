import 'package:flutter/material.dart';
//import 'package:newecommerce/feature/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';
import 'package:untitled12/feature/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';
//import 'package:fruits_market/features/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : CompleteInformationBody(),
    );
  }
}