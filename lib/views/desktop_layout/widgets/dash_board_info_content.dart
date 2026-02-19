import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/overview_widget.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/total_income_widget.dart';

class DashBoardInfoContent extends StatelessWidget {
  const DashBoardInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Expanded(flex: 4, child: OverviewWidget()),
          Expanded(flex: 3, child: TotalIncomeWidget()),
        ],
      ),
    );
  }
}
