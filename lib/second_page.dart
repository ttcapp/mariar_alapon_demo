import 'package:flutter/material.dart';

String avatarSrc2= "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png";
double conHeight=50;
double conWidth=50;

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
          children: [

            InkWell(
              onDoubleTap: (){
                setState(() {
                  conHeight=100;
                  conWidth=100;
                });
              },
              onTap: (){
                setState(() {
                  conHeight=500;
                  conWidth=500;
                });
              },
              child: AnimatedContainer(

                  height: conHeight,
                  width: conWidth,
                  duration: Duration(milliseconds: 3000),
                  child: Image.network(avatarSrc2)
              ),
            ),
          ],
        ),
    );
  }
}
