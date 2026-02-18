import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class DashBoardHeading extends StatelessWidget {
  const DashBoardHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 50),
      child: Text('Dashboard', style: AppTextStyles.heading1),
    );
  }
}
