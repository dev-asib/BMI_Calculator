import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:get/get.dart';

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      initialBinding: BMIBindings(),
      initialRoute: AppRoutes.splashView,
      getPages: AppRoutes.getPages,
      theme: AppThemes.appLightThemeData(),
      darkTheme: AppThemes.appDarkThemeData(),
      themeMode: ThemeMode.system,
    );
  }
}
