import 'package:get/get.dart';
import 'package:project_dua/routes/app_pages.dart';

class SplashLogic extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    await Future.delayed(const Duration(seconds: 3));

    await newPageLoad();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  newPageLoad() {
    Get.offNamed(Routes.login);
  }
}
