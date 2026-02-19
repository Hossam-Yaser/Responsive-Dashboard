import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_heading.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_info_content.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/products_and_comments_section.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: AppColors.lightGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashBoardHeading(),
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 12, child: DashBoardInfoContent()),
                Expanded(flex: 3, child: ProductsAndCommentsSection()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
