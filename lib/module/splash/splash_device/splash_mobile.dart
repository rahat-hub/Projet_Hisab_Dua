import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dua/module/splash/splash_logic.dart';
import 'package:project_dua/shared/constant_assets.dart';
import 'package:project_dua/shared/constant_size.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashMobilePortrait extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;

  const SplashMobilePortrait({
    Key? key,
    this.sizingInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    //Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    child: Get.isDarkMode != false ? Image.asset(ConstantAssets.loaderGifDarkMode) : Image.asset(ConstantAssets.loaderGifLightMode),
                  ),
                ),
                const SizedBox(
                  height: SizeConstant.CONTENTSPACING + 20,
                ),
                const CupertinoActivityIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SplashMobileLandscape extends GetView<SplashLogic> {
  final SizingInformation? sizingInformation;

  const SplashMobileLandscape({
    Key? key,
    this.sizingInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    //Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    child: Get.isDarkMode != false ? Image.asset(ConstantAssets.loaderGifDarkMode) : Image.asset(ConstantAssets.loaderGifLightMode),
                  ),
                ),
                const SizedBox(
                  height: SizeConstant.CONTENTSPACING + 20,
                ),
                const CupertinoActivityIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
