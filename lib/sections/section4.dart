import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';
import 'package:poluare/widget/Image.dart';

class Section4 extends StatelessWidget {
  const Section4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("OUR LATEST PROJECTS", style: TextStyle(color: mainColor, fontSize: 48 ),),
          SizedBox(
            height: 20,
          ),
          Text('We are an environmentally friendly renewable energy company offering a broad portfolio of technologies, products, &amp; solutions to our clients globally',
          style: TextStyle(color: mainColor, fontSize: 20),),
          GridView.count(
            shrinkWrap: true,
              crossAxisCount: 3,
            crossAxisSpacing: 20,
            children: [
              MyImage(imagePath: 'assets/images/image4_1.jpeg'),
              MyImage(imagePath: 'assets/images/image4_2.jpeg'),
              MyImage(imagePath: 'assets/images/image4_3.jpeg'),
              MyImage(imagePath: 'assets/images/image4_1.jpeg'),
              MyImage(imagePath: 'assets/images/image4_2.jpeg'),
              MyImage(imagePath: 'assets/images/image4_3.jpeg'),
            ],
          ),
          Container(
            width: 170,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: mainColor, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: TextButton(
              onPressed: (){

              },
              child: Text('ALL PROJECTS', style: TextStyle(
                letterSpacing: 2,
                color: Colors.white,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
