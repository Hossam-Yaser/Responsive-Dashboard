import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dashboard_body_heading.dart';

class TotalIncomeWidget extends StatelessWidget {
  const TotalIncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.white,
        child: const Column(
          children: [DashboardBodyHeading(headingText: 'Total Income')],
        ),
      ),
    );
  }
}
