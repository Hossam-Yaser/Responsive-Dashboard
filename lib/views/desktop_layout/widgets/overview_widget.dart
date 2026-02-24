import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/analytics_section.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/customer_list_generator.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dashboard_body_heading.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        color: AppColors.white,
        child: Column(
          children: [
            const DashboardBodyHeading(),
            const AnalyticsSection(),
            textSeparator(context),
            const CustomerListGenerator(),
          ],
        ),
      ),
    );
  }

  Expanded textSeparator(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Welcome  to our new online experience",
          style: AppTextStyles.bodyMedium(context),
        ),
      ),
    );
  }
}
