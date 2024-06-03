import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));});
    return Scaffold(
      backgroundColor: Colors.black,

       body:Column(
         children: [
           SizedBox(height: MediaQuery.of(context).size.height*.60,),
           Center(child: Lottie.asset('assets/lottie/video_2024-06-03_19-40-05.mp4.lottie.json',width: 200)),

         ],
       )
      //
      // Center(
      //   child: Text('VEA',style: TextStyle(
      //     fontSize: 45,
      //     color: Colors.white,
      //     fontWeight: FontWeight.bold
      //   ),),
      // ),
    );
  }
}
