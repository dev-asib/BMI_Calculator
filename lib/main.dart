import 'package:bmi_calculator/utils/app_exports.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => const BMICalculator(),
    ),
  );
}
