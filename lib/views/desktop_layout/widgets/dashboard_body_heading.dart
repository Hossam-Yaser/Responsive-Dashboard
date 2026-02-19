import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/all_times_button.dart';

class DashboardBodyHeading extends StatelessWidget {
  const DashboardBodyHeading({super.key, this.headingText = 'Overview'});

  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(headingText, style: AppTextStyles.heading2),
        ),
        const AllTimesButton(),
      ],
    );
  }
}
