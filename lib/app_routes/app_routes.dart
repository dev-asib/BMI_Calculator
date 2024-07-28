import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashView = '/';
  static const String bmiView = '/bmiView';

  static List<GetPage> getPages = [
    GetPage(
      name: splashView,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: bmiView,
      page: () => const BMIView(),
    ),
  ];
}
