import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget desktopScreen;
  final Widget mediumScreen;

  ResponsiveLayout({required this.mobileScreen
  , required this.mediumScreen, required this.desktopScreen, });

  static bool isMobileLook(BuildContext context){
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isDesktopLook(BuildContext context){
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context){
    return MediaQuery.of(context).size.width >= 600 &&
    MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 600) {
          return mobileScreen;
        }else if (constraints.maxWidth < 1200){
          return mediumScreen;
        }
        else{
          return desktopScreen;
        }
      },
      );
  }
}