import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      color: Color(0xFF2d2d4a),
      child: Column(
        children: [
          Image.asset('assets/images/logo.png'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.facebook),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.facebook),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.facebook),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('We are an environmentally friendly renewable energy company offering eco products, &amp; solutions.',
          style: TextStyle(
            color: Colors.white, fontSize: 16,
          ),),
        ],
      ),
    );
  }
}
