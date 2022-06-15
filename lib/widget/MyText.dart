import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Column(
        children: [
          Text('Our Mission', style: TextStyle(color: mainColor, fontWeight: FontWeight.bold, fontSize: 40),),
          SizedBox(
            height: 20,
          ),
          Text('We integrate systems and technologies designed by our team of scientists and engineers, with the most advanced technologies available to deliver more reliable and efficient energy projects. Our global platform is our strength.',
          style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}
