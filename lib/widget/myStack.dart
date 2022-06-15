import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 340,
          height: 450,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF6ac17d),
                  Color(0xFF9bf194),
                ]
            ),
          ),
        ),
        SizedBox(
          height: 600,
        ),
        Positioned(

          top: 50,
          left: 50,
          child: Container(
            width: 360,
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/girl.jpeg'),
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
        Positioned(
          top: 420,
          left: 140,
          child: Container(
            width: 300,
          height: 90,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff98d4a2),
                  Color(0xffe0ee64),
                ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Polly Walter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, height: 1.2, color: mainColor),),
              const SizedBox(
                height: 15,
              ),
              Text('CEO, Ecosma Buddies', style: TextStyle(fontSize: 16, color: mainColor),),
            ],
          ),
        ),),
      ],
    );
  }
}
