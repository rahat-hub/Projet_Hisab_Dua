import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'log_in_logic.dart';
import 'login_device/login_mobile.dart';
import 'login_device/login_tablet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return ScreenTypeLayout.builder(
        mobile: (context) => OrientationLayoutBuilder(
          portrait: (context) => LoginMobilePortrait(sizingInformation: sizingInformation),
          landscape: (context) => LoginMobileLandscape(sizingInformation: sizingInformation),
        ),
        tablet: (context) => OrientationLayoutBuilder(
          portrait: (context) => LoginTabletPortrait(sizingInformation: sizingInformation),
          landscape: (context) => LoginTabletLandscape(sizingInformation: sizingInformation),
        ),
      );
    });
  }
}
