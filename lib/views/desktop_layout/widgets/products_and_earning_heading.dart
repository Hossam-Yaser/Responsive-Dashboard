import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class ProdctsAndEarningSubHeading extends StatelessWidget {
  const ProdctsAndEarningSubHeading({
    super.key,
    this.leftHeadingText = 'Product',
    this.rightHeadingText = 'Earnings',
  });

  final String leftHeadingText;
  final String rightHeadingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftHeadingText, style: AppTextStyles.labelBold(context)),
          Text(rightHeadingText, style: AppTextStyles.labelBold(context)),
        ],
      ),
    );
  }
}
