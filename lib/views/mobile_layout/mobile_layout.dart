import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/left_category_section.dart';
import 'package:responsive_dashboard/views/mobile_layout/dash_board_info_mobile_content.dart';
import 'package:responsive_dashboard/views/shared_widgets/main_logo_widget.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(FontAwesomeIcons.bars),
        ),
        title: const FittedBox(fit: BoxFit.scaleDown, child: MainLogoWidget()),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [Expanded(child: DashBoardInfoMobileContent())],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: AppColors.white,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: LeftCategorySection(),
          ),
        ),
      ),
    );
  }
}
