import 'package:get/get.dart';

import 'log_in_logic.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginLogic());
  }
}
