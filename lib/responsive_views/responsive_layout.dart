import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget desktopScreen;
  final Widget mediumScreen;

  ResponsiveLayout({required this.mobileScreen
  , required this.mediumScreen, required this.desktopScreen, });

  static bool isMobileLook(BuildContext context){
    return MediaQuery.of(context).size.width < 576;
  }

  static bool isDesktopLook(BuildContext context){
    return MediaQuery.of(context).size.width > 992;
  }

  static bool isMediumScreen(BuildContext context){
    return MediaQuery.of(context).size.width >= 576 &&
    MediaQuery.of(context).size.width <= 992;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 992) {
          return desktopScreen;
        }else if (constraints.maxWidth > 576 && mediumScreen != null){
          return mediumScreen;
        }
        else{
          return mobileScreen;
        }
      },
      );
  }
}