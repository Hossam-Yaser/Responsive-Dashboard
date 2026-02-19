import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});
  final List<double> monthlyData = const [
    310,
    140,
    320,
    250,
    60,
    170,
    95,
    205,
    170,
    25,
    305,
    310,
  ];

  final List<String> months = const [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: BarChart(
        BarChartData(
          maxY: 400,
          minY: 0,
          gridData: FlGridData(
            drawVerticalLine: false,
            horizontalInterval: 100,
            getDrawingHorizontalLine: (value) =>
                const FlLine(color: AppColors.lightGray, strokeWidth: 1),
          ),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 100,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  String label;
                  if (value == 0) {
                    label = '0K';
                  } else if (value == 100) {
                    label = '100K';
                  } else if (value == 200) {
                    label = '200K';
                  } else if (value == 300) {
                    label = '300K';
                  } else if (value == 400) {
                    label = '400K';
                  } else {
                    return const SizedBox();
                  }
                  return Text(
                    label,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppColors.slateGray,
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      months[value.toInt()],
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.slateGray,
                      ),
                    ),
                  );
                },
              ),
            ),
            rightTitles: const AxisTitles(),
            topTitles: const AxisTitles(),
          ),
          barGroups: List.generate(monthlyData.length, (index) {
            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  toY: monthlyData[index],
                  color: AppColors.primary,
                  width: 22,
                  borderRadius: BorderRadius.zero, // flat top like the design
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
