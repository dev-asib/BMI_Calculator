import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final TextEditingController _ageTEController = TextEditingController();
  final TextEditingController _weightTEController = TextEditingController();
  final TextEditingController _feetTEController = TextEditingController();
  final TextEditingController _inchTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    final BMIController bmiController = Get.put(BMIController());
    bmiController.ageTEController = _ageTEController;
    bmiController.weightTEController = _weightTEController;
    bmiController.feetTEController = _feetTEController;
    bmiController.inchTEController = _inchTEController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            children: [
              GetBuilder<BMIController>(builder: (bmiController) {
                return InputFields(
                  labelText: 'Age',
                  hintText: 'Age',
                  textEditingController: _ageTEController,
                  validator: FormValidators.ageValidator,
                );
              }),
              const SizedBox(
                width: 10,
              ),
              GetBuilder<BMIController>(
                builder: (bmiController) {
                  return InputFields(
                    labelText: 'Weight',
                    hintText: 'Weight',
                    textEditingController: _weightTEController,
                    validator: FormValidators.weightValidator,
                  );
                },
              ),
              const SizedBox(
                width: 10,
              ),
              GetBuilder<BMIController>(
                builder: (bmiController) {
                  return InputFields(
                    labelText: 'Feet',
                    hintText: 'Feet',
                    textEditingController: _feetTEController,
                    validator: FormValidators.feetValidator,
                  );
                },
              ),
              const SizedBox(
                width: 10,
              ),
              GetBuilder<BMIController>(
                builder: (bmiController) {
                  return InputFields(
                    labelText: 'Inch',
                    hintText: 'Inch',
                    textEditingController: _inchTEController,
                    validator: FormValidators.inchValidator,
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GetBuilder<BMIController>(
            builder: (bmiController) {
              return ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    bmiController.bmiModel = BMIModel(
                        age: _ageTEController.text,
                        weight: _weightTEController.text,
                        feet: _feetTEController.text,
                        inch: _inchTEController.text);
                    bmiController.bmiCalculation();
                  }
                },
                child: const Text("Calculate"),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _ageTEController.dispose();
    _weightTEController.dispose();
    _feetTEController.dispose();
    _inchTEController.dispose();
    super.dispose();
  }
}
