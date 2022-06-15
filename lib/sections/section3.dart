import 'package:flutter/material.dart';
import 'package:poluare/widget/ImageContainer.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
            ImageContainer(imagePath: 'assets/images/image3_1.jpeg', title: 'TREE PLANET WEEK', description: 'Phasellus scelerisque sed leo quis gravida. Fusce lobortis libero ut arcu blandit pharetra.'),
          ImageContainer(imagePath: 'assets/images/image3_2.jpeg', title: 'AROUND CREAN', description: 'Duis ornare sapien at arcu rutrum, ut commodo magna vulputate volutpat ullamcorper diam et luctus.', verticalDirection: VerticalDirection.up,),
          ImageContainer(imagePath: 'assets/images/image3_3.jpeg', title: 'GREEN AREAS', description: 'Nulla imperdiet odio sit amet est vehicula condimentum congue dui nec ipsum ullamcorper tristique.'),
        ],
      ),
    );
  }
}
