import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/top_bar_builder.dart';

class DesktopLayoutBuilder extends StatelessWidget {
  const DesktopLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 40),
        child: Column(children: [TopBarBuilder()]),
      ),
    );
  }
}
