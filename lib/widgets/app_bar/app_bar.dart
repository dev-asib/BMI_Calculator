import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

AppBar buildAppBar() {
  return AppBar(
    title: const Text('BMI Calculator'),
    actions: [
      GetBuilder<BMIController>(
        builder: (bmiController) {
          return IconButton(
            onPressed: () {
              bmiController.clearData();
            },
            icon: const Icon(Icons.clear_all),
          );
        },
      ),
    ],
  );
}
