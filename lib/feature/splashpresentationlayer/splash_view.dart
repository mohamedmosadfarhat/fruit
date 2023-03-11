import 'package:flutter/material.dart';
//import 'package:newecommerce/feature/splashpresentationlayer/wedgit/splash_body.dart';
import 'package:untitled12/feature/splashpresentationlayer/wedgit/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({ Key? key }) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SplashBody(),
    );
  }
}