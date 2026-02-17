import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/shared_widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/desktop_layout/desktop_layout_builder.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DesktopLayoutBuilder(),
    );
  }
}
