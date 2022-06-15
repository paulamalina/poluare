import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';
import 'package:poluare/main.dart';
import 'package:poluare/widget/button.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 100, right: 20, bottom: 100),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
            colors: [
              Color(0xFF6ac17d),
              Color(0xFF9bf194),
            ]
        ),
      ),
      child: Column(
        children: [
          Text('Plant Trees To Save Birds Residence', style: TextStyle(color: mainColor, fontSize: 36, fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          Text('Donec placerat mi et tortor bibendum, at accumsan nunc accumsan. Vivamus sed nisl sit amet ex convallis imperdiet. Lorem ipsum dolor sit amet, consectetur adipiscing elit nullam nunc justo sagittis suscipit ultrices.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xFF293330),
          ),),
          SizedBox(height: 25,),
          MyButton(),
        ],
      ),
    );
  }
}
