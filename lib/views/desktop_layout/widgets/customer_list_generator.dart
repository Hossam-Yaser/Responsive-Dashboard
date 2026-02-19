import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/customer_card.dart';

class CustomerListGenerator extends StatelessWidget {
  const CustomerListGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: List.generate(AppAssets.customersIcon.length * 2 - 1, (
          index,
        ) {
          // Even indexes = customer cards, Odd indexes = dividers
          if (index.isOdd) {
            return Container(width: 1, height: 62, color: AppColors.gray);
          }

          final customerIndex = index ~/ 2;
          return Expanded(
            child: Center(
              child: CustomerCard(
                imagePath: AppAssets.customersIcon[customerIndex],
                customerName: AppAssets.customersNames[customerIndex],
              ),
            ),
          );
        }),
      ),
    );
  }
}
