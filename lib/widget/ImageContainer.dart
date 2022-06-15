import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VerticalDirection verticalDirection;
  const ImageContainer({Key? key, required this.imagePath, required this.title, required this.description, this.verticalDirection=VerticalDirection.down}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(30),
      width: 400,
      color: Colors.white,
      child: Column(
        verticalDirection: verticalDirection,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF6ac17d),
                        Color(0xFF9bf194),
                      ]
                  ),
                ),
              ),
              Positioned(
                top: -25,
                left: 25,
                child: Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),)
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            height: 150,
            child: Column(
              children: [
                Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 15,
                ),
                Text(description, style: TextStyle(fontSize: 16),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
