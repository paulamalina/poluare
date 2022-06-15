import 'package:flutter/material.dart';

import '../constant/constants.dart';

class ItemConatainer extends StatelessWidget {
  final String title;
  final String description;

  const ItemConatainer({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 350,
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFF6ac17d),
              child: Icon(Icons.add_circle_sharp),
            ),
          SizedBox(
            height: 25,
          ),
          Text(title, style: titleStyle,),
          SizedBox(
            height: 25,
          ),
          Text(description, style: descriptionStyle,),
        ],
      ),
    );
  }
}
