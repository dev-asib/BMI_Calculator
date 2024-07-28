import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class BmiMeter extends StatelessWidget {
  const BmiMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! / 3,
      width: SizeConfig.screenWidth! / 0.5,
      child: GetBuilder<BMIController>(
        builder: (bmiController) {
          return SfRadialGauge(
            backgroundColor: AppColors.white,
            axes: <RadialAxis>[
              RadialAxis(
                minimum: 0,
                maximum: 50,
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 0,
                    endValue: 15.9,
                    color: Colors.green,
                  ),
                  GaugeRange(
                    startValue: 16,
                    endValue: 16.9,
                    color: Colors.orange,
                  ),
                  GaugeRange(
                    startValue: 17,
                    endValue: 18.4,
                    color: Colors.blue,
                  ),
                  GaugeRange(
                    startValue: 18.5,
                    endValue: 24.9,
                    color: Colors.amberAccent,
                  ),
                  GaugeRange(
                    startValue: 25,
                    endValue: 29.9,
                    color: Colors.purple,
                  ),
                  GaugeRange(
                    startValue: 30,
                    endValue: 34.9,
                    color: Colors.lime,
                  ),
                  GaugeRange(
                    startValue: 35,
                    endValue: 39.9,
                    color: Colors.tealAccent,
                  ),
                  GaugeRange(
                    startValue: 40,
                    endValue: 50,
                    color: Colors.red,
                  ),
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(value: bmiController.bmiResult),
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      bmiController.bmiResult.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 25,
                        color: AppColors.appThemeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    angle: 90,
                    positionFactor: 0.5,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
