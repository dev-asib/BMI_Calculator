import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class BMIBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => BMIController());
  }
}
