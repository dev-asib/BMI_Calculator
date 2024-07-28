import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class BmiTable extends StatelessWidget {
  const BmiTable({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BMIController>(
      builder: (bmiController) {
        return Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          textDirection: TextDirection.ltr,
          border: TableBorder.all(color: AppColors.white, width: 5),
          children: [
            TableRow(
              decoration: const BoxDecoration(color: AppColors.appThemeColor),
              children: [
                tableHeading("Classification"),
                tableHeading("BMI Range - kg/m2"),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult < 16 ? Colors.green : null,
              ),
              children: [
                tableData(
                  "Severe Thinness",
                  bmiController.bmiResult < 16
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "<16",
                  bmiController.bmiResult < 16
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 16 &&
                        bmiController.bmiResult < 17
                    ? Colors.orange
                    : null,
              ),
              children: [
                tableData(
                  "Moderate Thinness",
                  bmiController.bmiResult >= 16 && bmiController.bmiResult < 17
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "16-16.9",
                  bmiController.bmiResult >= 16 && bmiController.bmiResult < 17
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 17 &&
                        bmiController.bmiResult < 18.5
                    ? Colors.blue
                    : null,
              ),
              children: [
                tableData(
                  "Mild Thinness",
                  bmiController.bmiResult >= 17 &&
                          bmiController.bmiResult < 18.5
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "17-18.4",
                  bmiController.bmiResult >= 17 &&
                          bmiController.bmiResult < 18.5
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 18.5 &&
                        bmiController.bmiResult < 25
                    ? Colors.amberAccent
                    : null,
              ),
              children: [
                tableData(
                  "Normal",
                  bmiController.bmiResult >= 18.5 &&
                          bmiController.bmiResult < 25
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "18.5 - 24.9",
                  bmiController.bmiResult >= 18.5 &&
                          bmiController.bmiResult < 25
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 25 &&
                        bmiController.bmiResult < 30
                    ? Colors.purple
                    : null,
              ),
              children: [
                tableData(
                  "Overweight",
                  bmiController.bmiResult >= 25 && bmiController.bmiResult < 30
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "25 - 29.9",
                  bmiController.bmiResult >= 25 && bmiController.bmiResult < 30
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 30 &&
                        bmiController.bmiResult < 35
                    ? Colors.lime
                    : null,
              ),
              children: [
                tableData(
                  "Obese Class I",
                  bmiController.bmiResult >= 30 && bmiController.bmiResult < 35
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "30 - 34.9",
                  bmiController.bmiResult >= 30 && bmiController.bmiResult < 35
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult >= 35 &&
                        bmiController.bmiResult <= 40
                    ? Colors.tealAccent
                    : null,
              ),
              children: [
                tableData(
                  "Obese Class II",
                  bmiController.bmiResult >= 35 && bmiController.bmiResult <= 40
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  "35 - 40",
                  bmiController.bmiResult >= 35 && bmiController.bmiResult <= 40
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: bmiController.bmiResult > 40 ? Colors.red : null,
              ),
              children: [
                tableData(
                  "Obese Class III",
                  bmiController.bmiResult > 40
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
                tableData(
                  ">40",
                  bmiController.bmiResult > 40
                      ? AppColors.white
                      : AppColors.appThemeColor,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
