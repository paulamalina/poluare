import 'package:flutter/material.dart';
import 'package:poluare/widget/button.dart';
import 'package:poluare/widget/descriptionSection.dart';

class Section extends StatelessWidget {
  final String imagePath;
  final VerticalDirection verticalDirection;
  const Section({Key? key, required this.imagePath, this.verticalDirection=VerticalDirection.down, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth <=750){
        return Column(
          verticalDirection: verticalDirection,
          children: [
            Image.asset(imagePath,),
            DescriptionSection(),
          ],
        );
      }else{
        return Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/2,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
            width: MediaQuery.of(context).size.width/2,
                height: 500,
                child: DescriptionSection()),
          ],
        );
      }
    });
  }
}
