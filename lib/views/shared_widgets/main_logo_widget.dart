import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/spacing.dart';

class MainLogoWidget extends StatelessWidget {
  const MainLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        logoDrawer(),
        horizontalSpacing(15),
        SvgPicture.asset(AppAssets.mainLogo),
      ],
    );
  }

  Widget logoDrawer() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(85),
            blurRadius: 8,
            spreadRadius: 1,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: AppColors.green,
        child: CircleAvatar(radius: 10, backgroundColor: AppColors.white),
      ),
    );
  }
}
