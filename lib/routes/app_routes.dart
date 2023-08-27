import 'package:get/get.dart';
import 'package:project_dua/module/dashboard/dashboard_binding.dart';
import 'package:project_dua/module/dashboard/dashboard_view.dart';
import 'package:project_dua/module/log_in/log_in_binding.dart';
import 'package:project_dua/module/log_in/log_in_view.dart';
import 'package:project_dua/module/splash/splash_binding.dart';
import 'package:project_dua/module/splash/splash_view.dart';

import 'app_pages.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(name: Routes.splash, page: () => const SplashPage(), bindings: [
      SplashBinding(),
    ]),
    GetPage(name: Routes.login, page: () => const LoginPage(), bindings: [
      LoginBinding(),
    ]),
    GetPage(name: Routes.dashboard, page: () => const DashboardPage(), bindings: [
      DashboardBinding(),
    ]),
  ];
}
