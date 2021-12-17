import 'package:flutter/material.dart';
import 'package:flutterweb_ladingpage/utils/responsiveLayout.dart';
import 'package:flutterweb_ladingpage/widgets/navbar.dart';
import 'package:flutterweb_ladingpage/widgets/search.dart';
import 'package:flutterweb_ladingpage/widgets/sendBtn.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Responsive Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFF8FBFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(), Body()],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: LargeChild(), smallScreen: SmallChild());
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network(
              "assets/image_01.png",
              scale: .85,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                      color: Color(0xFF8591B0),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Wellocome To ",
                          style:
                              TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                          children: [
                        TextSpan(
                            text: "Britu",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87)),
                      ])),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 20),
                    child: Text("LET'S EXPLPORE THE WORLD"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network(
              "assets/image_01.png",
              scale: .85,
            ),
          )
        ],
      ),
    );
  }
}
