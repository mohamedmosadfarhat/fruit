import 'package:flutter/material.dart';
import 'package:untitled12/feature/onbordingpresentationlayer/wedgits/onbording_body.dart';
//import 'package:newecommerce/feature/onbordingpresentationlayer/wedgits/onbording_body.dart';

class OnbordingView extends StatefulWidget {
  const OnbordingView({ Key? key }) : super(key: key);

  @override
  _OnbordingViewState createState() => _OnbordingViewState();
}

class _OnbordingViewState extends State<OnbordingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OnbordinBody() ,
    );
  }
}