import 'package:bmi_calculator/utils/app_exports.dart';

class BMIView extends StatelessWidget {
  const BMIView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              BmiMeter(),
              SizedBox(height: 20),
              InputForm(),
              SizedBox(height: 20),
              BmiTable(),
            ],
          ),
        ),
      ),
    );
  }
}
