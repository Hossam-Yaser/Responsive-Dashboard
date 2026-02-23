import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/dash_board_body.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/left_category_section.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/top_bar_builder.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.black,
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(FontAwesomeIcons.bars, color: AppColors.white),
        ),
      ),
      backgroundColor: AppColors.white,
      body: const Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10, top: 16),
        child: Column(
          children: [
            TopBarBuilder(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 21.0),
                child: DashBoardBody(),
              ),
            ),
          ],
        ),
      ),

      drawer: const Drawer(
        backgroundColor: AppColors.white,
        child: LeftCategorySection(),
      ),
    );
  }
}
