import 'package:bmi_calculator/utils/app_exports.dart';

Widget tableData(String data, Color textColor) {
  return SizedBox(
    height: 50,
    child: Center(
      child: FittedBox(
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            //color: AppColors.appThemeColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
