import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dua/module/splash/splash_device/splash_mobile.dart';
import 'package:project_dua/module/splash/splash_device/splash_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'splash_logic.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => SplashMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => SplashMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => OrientationLayoutBuilder(
          portrait: (context) => SplashTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) => SplashTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
