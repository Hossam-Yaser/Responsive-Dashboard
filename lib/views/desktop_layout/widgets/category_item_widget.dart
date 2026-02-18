import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/utils/spacing.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.iconPath,
    required this.isSelected,
    required this.labelText,
  });
  final String iconPath;
  final String labelText;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: EdgeInsets.all(11),
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? AppColors.lightGray : AppColors.white,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              width: 36,
              height: 36,
              iconPath,
              //use colorfilter instead of color to change the color of svg
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.black : AppColors.slateGray,
                BlendMode.srcIn,
              ),
            ),
            horizontalSpacing(19),
            Text(
              labelText,
              style: isSelected
                  ? AppTextStyles.bodyLarge.copyWith(color: AppColors.black)
                  : AppTextStyles.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
