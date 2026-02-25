import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/chart_section.dart';

class TotalIncomeMobileWidget extends StatelessWidget {
  const TotalIncomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
        color: AppColors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Total Income',
                  style: AppTextStyles.heading2(context),
                ),
              ),
            ),
            const Expanded(child: ChartSection()),
          ],
        ),
      ),
    );
  }
}
