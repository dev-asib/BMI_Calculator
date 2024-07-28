import 'package:bmi_calculator/utils/app_exports.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.textEditingController,
    this.validator,
  });

  final String labelText;
  final String hintText;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.appThemeColor,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
        validator: validator,
      ),
    );
  }
}
