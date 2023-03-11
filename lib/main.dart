import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
//import 'package:newecommerce/feature/splashpresentationlayer/splash_view.dart';
import 'package:untitled12/feature/splashpresentationlayer/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FriutMarket());
}
class FriutMarket extends StatefulWidget {
  const FriutMarket({ Key? key }) : super(key: key);

  @override
  _FriutMarketState createState() => _FriutMarketState();
}

class _FriutMarketState extends State<FriutMarket> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
