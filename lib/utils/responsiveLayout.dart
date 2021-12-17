import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveLayout({
    Key? key,
    @required this.largeScreen,
    @required this.mediumScreen,
    @required this.smallScreen,
  }) : super(key: key);

  //MediaQuert로 현재 해상도 사이즈 정보값으로 확인
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  @override
  Widget build(BuildContext context) {
    //LayoutBuilder위젯은 위젯의 크기에 따라 빌드해 반응하도록 도와주는 위젯
    //Builds a widget tree that can depend on the parent widget's size.
    //builder function은
    // 처음으로 widget이 layout 될 때
    // 부모 widget의 constraint가 바뀔 때
    // 부모 widget이 해당 widget을 업데이트할 호출한다.
    // 즉 특정한 해상도가 변경이 될때 builder function을 호출한다.
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return largeScreen!;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return mediumScreen ?? largeScreen!;
        } else {
          return smallScreen ?? largeScreen!;
        }
      },
    );
  }
}
