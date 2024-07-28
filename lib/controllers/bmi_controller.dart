import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  double _bmiResult = 0;

  double get bmiResult => _bmiResult;

  BMIModel bmiModel = BMIModel();

  late TextEditingController _ageTEController;
  late TextEditingController _weightTEController;
  late TextEditingController _feetTEController;
  late TextEditingController _inchTEController;

  set ageTEController(TextEditingController ageTEController) {
    _ageTEController = ageTEController;
  }

  set weightTEController(TextEditingController weightTEController) {
    _weightTEController = weightTEController;
  }

  set feetTEController(TextEditingController feetTEController) {
    _feetTEController = feetTEController;
  }

  set inchTEController(TextEditingController inchTEController) {
    _inchTEController = inchTEController;
  }

  void bmiCalculation() {
    double weight = double.tryParse(bmiModel.weight ?? '0') ?? 0;
    double feet = double.tryParse(bmiModel.feet ?? '0') ?? 0;
    double inch = double.tryParse(bmiModel.inch ?? '0') ?? 0;

    double meter = (feet * 12 + inch) * 0.0254;

    if (meter > 0) {
      _bmiResult = weight / (meter * meter);
    } else {
      _bmiResult = 0;
    }

    update();
  }

  void clearData() {
    _ageTEController.clear();
    _weightTEController.clear();
    _feetTEController.clear();
    _inchTEController.clear();
    _bmiResult = 0;

    update();
  }
}
