import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';

class SuffixProfileRelatedIcons extends StatelessWidget {
  const SuffixProfileRelatedIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            width: 36,
            height: 36,
            AppAssets.notificationIcon,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(width: 36, height: 36, AppAssets.createIcon),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(width: 36, height: 36, AppAssets.customersIcon[0]),
        ),
      ],
    );
  }
}
