import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class CustomersAndMoneyInfo extends StatelessWidget {
  const CustomersAndMoneyInfo({
    super.key,
    this.backgroundColor = AppColors.white,

    this.headingText,
    this.numbersText,
    this.percentage,
  });
  final Color backgroundColor;

  final String? headingText;
  final String? numbersText;
  final double? percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 35, right: 20, bottom: 16),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headingText == null ? 'Customers' : headingText!,
                  style: AppTextStyles.bodyMedium(context),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  numbersText == null ? '10,243' : numbersText!,

                  style: AppTextStyles.bodyLarge(context),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          CircleAvatar(
            backgroundColor: AppColors.lightMint,
            child: Text(
              percentage == null ? '--%' : '$percentage%',
              style: AppTextStyles.caption(context),
            ),
          ),
        ],
      ),
    );
  }
}
