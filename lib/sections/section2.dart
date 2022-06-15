import 'package:flutter/material.dart';
import 'package:poluare/widget/MyText.dart';
import 'package:poluare/widget/myStack.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth>=950){
        return Row(

          children: [
            Container(
              padding: EdgeInsets.only(left: 100),
              child: MyStack(), width: MediaQuery.of(context).size.width/2,
            ),
            MyText(),
          ],
        );
      }else{
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyStack(),
            MyText(),
          ],
        );
      }
    });
  }
}
