import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_heading.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_info_content.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: AppColors.gray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashBoardHeading(),
          Row(children: [DashBoardInfoContent()]),
        ],
      ),
    );
  }
}
