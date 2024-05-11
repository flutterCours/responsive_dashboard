import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
        swapAnimationDuration: const Duration(milliseconds: 300),
        swapAnimationCurve: Curves.decelerate,
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;

          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        customPieChartSectionData(
            value: 22,
            title: 'Other',
            index: 0,
            color: const Color(0xFF208CC8)),
        customPieChartSectionData(
            value: 25,
            title: 'Design product',
            index: 1,
            color: const Color(0xFF4EB7F2)),
        customPieChartSectionData(
            value: 40,
            title: 'Design service',
            index: 2,
            color: const Color(0xFF064061)),
        customPieChartSectionData(
            color: const Color(0xFFE2DECD),
            value: 20,
            title: 'Product royalty',
            index: 3),
      ],
    );
  }

  PieChartSectionData customPieChartSectionData({
    required int index,
    required double value,
    required String title,
    required Color color,
  }) {
    return PieChartSectionData(
      titlePositionPercentageOffset: activeIndex == index ? -1.5 : null,
      titleStyle: AppStyles.styleSemiBold20(context)
          .copyWith(color: activeIndex == index ? Colors.black : Colors.white),
      title: activeIndex == index ? title : "$value%",
      value: value,
      radius: activeIndex == index ? 60 : 40,
      color: color,
    );
  }
}
