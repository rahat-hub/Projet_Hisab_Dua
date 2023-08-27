import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:project_dua/module/log_in/log_in_logic.dart';
import 'package:project_dua/shared/constant_assets.dart';
import 'package:project_dua/shared/constant_size.dart';
import 'package:project_dua/widgets/text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginTabletPortrait extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;

  const LoginTabletPortrait({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedBuilder(
          animation: controller.animationController,
          builder: (context, _) {
            return Container(
              decoration: BoxDecoration(gradient: LinearGradient(
                  begin: controller.topAlignmentAnimation.value,
                  end: controller.bottomAlignmentAnimation.value,
                  //transform: const GradientRotation(1/6),
                  colors: [Colors.greenAccent, Colors.blueAccent, Colors.white.withRed(12), Colors.yellowAccent.withOpacity(0.4), Colors.green])),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: 100 * 2,
                    //   width: 100 * 2,
                    //   child: Image.asset(ConstantAssets.loginCardImage),
                    // ),

                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                    FormBuilderField(
                      name: "username",
                      builder: (FormFieldState<dynamic> field) {
                        return TextFieldConstant.textFieldWidgets(
                            field: field,
                            controller: controller.username,
                            hintText: 'username',
                            onChange: (value) {
                              controller.username.text = value;
                            });
                      },
                    ),
                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                    FormBuilderField(
                      name: "password",
                      builder: (FormFieldState<dynamic> field) {
                        return TextFieldConstant.textFieldWidgets(
                            field: field,
                            controller: controller.password,
                            hintText: 'password',
                            onChange: (value) {
                              controller.password.text = value;
                            },
                            showSuffixIcon: true,
                            isPassword: true,
                            obscureTextShow: controller.obscureTextShow.value,
                            obscureTextShowFunc: () {
                              controller.obscureTextShow.value ? controller.obscureTextShow.value = false : controller.obscureTextShow.value = true;
                            });
                      },
                    ),
                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LoginTabletLandscape extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;

  const LoginTabletLandscape({super.key, this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedBuilder(
          animation: controller.animationController,
          builder: (context, _) {
            return Container(
              decoration: BoxDecoration(gradient: LinearGradient(
                  begin: controller.topAlignmentAnimation.value,
                  end: controller.bottomAlignmentAnimation.value,
                  //transform: const GradientRotation(1/6),
                  colors: [Colors.greenAccent, Colors.blueAccent, Colors.white.withRed(12), Colors.yellowAccent.withOpacity(0.4), Colors.green])),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100 * 2,
                      width: 100 * 2,
                      child: Image.asset(ConstantAssets.loginCardImage),
                    ),
                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                    FormBuilderField(
                      name: "username",
                      builder: (FormFieldState<dynamic> field) {
                        return TextFieldConstant.textFieldWidgets(
                            field: field,
                            controller: controller.username,
                            hintText: 'username',
                            onChange: (value) {
                              controller.username.text = value;
                            });
                      },
                    ),
                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                    FormBuilderField(
                      name: "password",
                      builder: (FormFieldState<dynamic> field) {
                        return TextFieldConstant.textFieldWidgets(
                            field: field,
                            controller: controller.password,
                            hintText: 'password',
                            onChange: (value) {
                              controller.password.text = value;
                            },
                            showSuffixIcon: true,
                            isPassword: true,
                            obscureTextShow: controller.obscureTextShow.value,
                            obscureTextShowFunc: () {
                              controller.obscureTextShow.value ? controller.obscureTextShow.value = false : controller.obscureTextShow.value = true;
                            });
                      },
                    ),
                    const SizedBox(height: SizeConstant.CONTENTSPACING + 10),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
