import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class AllTimesButton extends StatelessWidget {
  const AllTimesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 209,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.only(left: 27, right: 19, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.gray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('All Times', style: AppTextStyles.labelBold),
          const Icon(FontAwesomeIcons.angleDown, size: 24),
        ],
      ),
    );
  }
}
