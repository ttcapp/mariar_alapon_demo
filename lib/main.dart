import 'dart:math';

import 'package:flutter/material.dart';
import 'package:maria_demo/my_home_page.dart';
import 'package:maria_demo/second_page.dart';
import 'package:slide_drawer/slide_drawer.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: SlideDrawer(
        backgroundColor: Colors.deepPurple.withOpacity(0.3),
        offsetFromRight: 300,
        rotateAngle: pi/34,
        curve: Curves.decelerate,
        duration: Duration(milliseconds: 300),
        items: [
          MenuItem('Home', onTap: (){},
              icon:Icons.account_balance),
          MenuItem('Second Page',
              onTap: (){
           navigatorKey.currentState!.push(
             MaterialPageRoute(builder: (context)=>SecondPage())
           );
              },
              icon: Icons.visibility),
          MenuItem('Favourite', onTap: (){},
              icon: Icons.ac_unit),
          MenuItem('Profile', onTap: (){},
              icon: Icons.account_circle_rounded),
          MenuItem('Setting', onTap: (){},
              icon: Icons.settings),
        ],
        child: MyHomePage(),
      ),
    );
  }
}
