import 'package:flutter/material.dart';
import 'package:poluare/constant/constants.dart';
import 'package:poluare/sections/appBar.dart';
import 'package:poluare/sections/footer.dart';
import 'package:poluare/sections/section3.dart';
import 'package:poluare/sections/section4.dart';
import 'package:poluare/sections/section5.dart';
import 'package:poluare/widget/itemContainer.dart';
import 'package:poluare/sections/section1.dart';
import 'package:poluare/sections/section2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poluare',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 60,
            color: mainColor,
            child: MyAppBar(),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                children: [
                  Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/greenbg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                left: 50,
                child: Container(
                  //color: Colors.red,
                   padding: EdgeInsets.only(right: 20),
                   width: MediaQuery.of(context).size.width-20,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Cleaner',
                          style: boldTextStyle,
                          children: [
                            TextSpan(
                              text: ' Energy for a ', style: normalTextStyle,
                            ),
                            TextSpan(
                              text: 'Cleaner',
                            ),
                            TextSpan(
                              text: ' World', style: normalTextStyle,
                            ),
                          ]
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        introText, style: introTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(50),
            color: Color(0xFF2d2d4a),
            child: Center(
              child: Wrap(
                clipBehavior: Clip.none,
                spacing: 30,
                runSpacing: 30,
                // crossAxisAlignment: WrapCrossAlignment.center,
                // runAlignment: WrapAlignment.center,
                children: [
                  ItemConatainer(title: 'ECO SYSTEM', description: generalDescription),
                  ItemConatainer(title: 'BIOLOGY', description: generalDescription),
                  ItemConatainer(title: 'ORGANIC', description: generalDescription),
                ],
              ),
            ),
          ),
          Section(imagePath: 'assets/images/image1.jpeg'),
          SizedBox(height: 60,),
          Section2(),
          SizedBox(
            height: 50,
          ),
          Section(imagePath: 'assets/images/image2.jpeg', verticalDirection: VerticalDirection.up,),
          SizedBox(
            height: 50,
          ),
          Section3(),
          SizedBox(
            height: 50,
          ),
          Section(imagePath: 'assets/images/image.jpeg', ),

          Section4(),
          Section5(),
          Footer(),


        ],
      ),
    );
  }
}
