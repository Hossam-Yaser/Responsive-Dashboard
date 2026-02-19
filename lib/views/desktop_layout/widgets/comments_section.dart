import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/utils/spacing.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/popular_products_heading.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/products_and_earning_heading.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: AppColors.white,
        child: Column(
          children: [
            const PopularProductsHeading(headingText: "Comments"),
            const ProdctsAndEarningSubHeading(
              leftHeadingText: 'Comments',
              rightHeadingText: 'Date',
            ),
            verticalSpacing(8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(height: 1, color: AppColors.gray),
            ),
            Padding(
              padding: const EdgeInsetsGeometry.only(left: 8, top: 8),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut  Ut enim ad minim veniam, quis nostrud exercitation',
                style: AppTextStyles.bodySmall,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
