import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: CircularProgressIndicator(
        strokeWidth: 10,
        value: .75,
        backgroundColor: AppColors.chartSecondary,
        valueColor: AlwaysStoppedAnimation(AppColors.chartPrimary),
      ),
    );
  }
}
