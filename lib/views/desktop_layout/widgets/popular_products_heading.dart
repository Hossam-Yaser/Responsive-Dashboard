import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class PopularProductsHeading extends StatelessWidget {
  const PopularProductsHeading({
    super.key,
    this.headingText = 'Popular Products',
  });

  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 16),
      child: Text(headingText, style: AppTextStyles.heading2),
    );
  }
}
