import 'package:bmi_calculator/utils/app_exports.dart';

Widget tableHeading(String headingName) {
  return SizedBox(
    height: 50,
    child: Center(
      child: FittedBox(
        child: Text(
          headingName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
