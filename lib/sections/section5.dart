import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';

class Section5 extends StatelessWidget {
  const Section5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6ac17d),
                Color(0xFF9bf194),
              ]
            )
          ),
        ),
        Container(
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2d2d4a),
                  Color(0xFF2d2d4a),
                ]
              ),
              backgroundBlendMode: BlendMode.darken,
              image: DecorationImage(
              image: AssetImage('assets/images/image5.jpeg', ),
                fit: BoxFit.cover,colorFilter: ColorFilter.mode(mainColor, BlendMode.modulate)
                ),
              ),
          child: Center(
            child: Wrap(
              clipBehavior: Clip.none,

              runSpacing: 25,
              spacing: 25,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   height: 1100,
        //   color: Colors.transparent,
        // ),
        // Positioned(
        //   top: 200,
        //   child: Container(
        //   height: 1100,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Color(0xFF2d2d4a),
        //         Color(0xFF2d2d4a),
        //       ]
        //     ),
        //     backgroundBlendMode: BlendMode.darken,
        //     image: DecorationImage(
        //     image: AssetImage('assets/images/image5.jpeg', ),
        //       fit: BoxFit.cover,colorFilter: ColorFilter.mode(mainColor, BlendMode.modulate)
        //
        //       ),
        //     ),
        //   ),
        // ),

        // Container(
        //   height: 400,
        //   child: Stack(
        //     clipBehavior: Clip.none,
        //     children: [
        //       Positioned(
        //         top: -100,
        //         child:
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}


//6ac17d
//9bf194