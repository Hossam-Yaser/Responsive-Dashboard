import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/customers_and_money_info.dart';

class AnalyticsSection extends StatelessWidget {
  const AnalyticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: const BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: const Row(
        children: [
          Expanded(child: CustomersAndMoneyInfo(percentage: 8)),
          Expanded(
            child: CustomersAndMoneyInfo(
              backgroundColor: AppColors.lightGray,
              headingText: 'Income',
              numbersText: "\$39,403,450",
              percentage: 8.5,
            ),
          ),
        ],
      ),
    );
  }
}
