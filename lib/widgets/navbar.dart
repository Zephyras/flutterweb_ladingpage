import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Products", "Features", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: TextButton(
          child: Text(
            text.toString(),
            style: TextStyle(fontFamily: "Montserrat-Bold"),
          ),
          onPressed: () {},
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(colors: [
                    Color(0xFFC86DD7),
                    Color(0xFF3023AE),
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                ),
                child: Center(
                  child: Text("B",
                      style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text("Britu", style: TextStyle(fontSize: 26)),
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              children: [
                ...navItem(),
                SizedBox(
                  width: 20,
                )
              ]..add(InkWell(
                  onTap: () {},
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFC86DD7),
                        Color(0xFF3023AE),
                      ], begin: Alignment.bottomRight, end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF6078ea).withOpacity(.3),
                          offset: Offset(0, 8),
                          blurRadius: 8,
                        )
                      ],
                    ),
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold"),
                        ),
                      ),
                    ),
                  ))),
            )
          else
            Image.network(
              "assets/menu.png",
              width: 26,
              height: 26,
            ),
        ],
      ),
    );
  }
}
