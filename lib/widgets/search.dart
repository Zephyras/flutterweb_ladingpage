import 'package:flutter/material.dart';
import 'package:flutterweb_ladingpage/utils/responsiveLayout.dart';
import 'package:flutterweb_ladingpage/widgets/sendBtn.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 4.0,
          right: ResponsiveLayout.isSmallScreen(context) ? 4 : 74,
          top: 10,
          bottom: 40),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 8),
                blurRadius: 8,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 8,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Email Address'),
                  )),
              Expanded(
                flex: 2,
                child: SendBtn(),
              ),
              //Expanded(child: flex:2, child: )
            ],
          ),
        ),
      ),
    );
  }
}
