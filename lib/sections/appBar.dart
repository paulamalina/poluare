import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<=700){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/green.png', height: 50,),
              Icon(Icons.menu),
            ],
          );
        }else{
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/green.png', height: 50,),
              Text('Sectiune1'),
              Text('Sectiune2'),
              Text('Sectiune3'),
            ],
          );
        }
      }),
    );
  }
}

