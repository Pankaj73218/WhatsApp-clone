import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/Onboarding.dart';
import 'package:whatsappclone/screens/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboarding()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp logo.png",),
            SizedBox(height: 50),
            Uihelper.CustomText(text: "WhatsApp", height: 25, fontweight: FontWeight.bold,),
          ],
        ),
      ),
    );
  }
}
