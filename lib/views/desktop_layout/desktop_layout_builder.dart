import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_body.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/left_category_section.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/top_bar_builder.dart';

class DesktopLayoutBuilder extends StatelessWidget {
  const DesktopLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10, top: 40),
        child: Column(
          children: [
            TopBarBuilder(),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: Row(
                  children: [
                    Expanded(flex: 2, child: LeftCategorySection()),
                    Expanded(flex: 10, child: DashBoardBody()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
