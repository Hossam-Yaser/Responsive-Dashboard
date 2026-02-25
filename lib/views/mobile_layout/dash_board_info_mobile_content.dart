import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/mobile_layout/overview_mobile_widget.dart';
import 'package:responsive_dashboard/views/mobile_layout/total_income_mobile_widget.dart';

class DashBoardInfoMobileContent extends StatelessWidget {
  const DashBoardInfoMobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 4, child: OverviewMobileWidget()),
        Expanded(flex: 3, child: TotalIncomeMobileWidget()),
      ],
    );
  }
}
