import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_layout/desktop_layout_builder.dart';
import 'package:responsive_dashboard/views/mobile_layout/mobile_layout.dart';
import 'package:responsive_dashboard/views/shared_widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/tablet_layout.dart/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
      desktopLayout: (context) => const DesktopLayoutBuilder(),
    );
  }
}
