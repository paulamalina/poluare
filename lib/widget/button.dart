import 'package:flutter/material.dart';
import 'package:poluare/abstract/Runnable.dart';
import 'package:poluare/constant/constants.dart';
import 'package:poluare/main.dart';

class MyButton extends StatelessWidget implements Runnable{
  const MyButton({Key? key}) : super(key: key);

  @override
  void execute() {
    // TODO: implement execute
    print('pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
          onPressed: (){
        execute();
      },
        child: Text('LEARN MORE', style: TextStyle(
          letterSpacing: 2,
          color: mainColor,
        ),),
      ),
    );
  }
}
