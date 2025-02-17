import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex == 0 ? 60 : 40,
          color: const Color(0xFFE2DECD),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 1 ? 60 : 40,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 2 ? 60 : 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: activeIndex == 3 ? 60 : 40,
          color: const Color(0xFF064061),
        ),
      ],
    );
  }
}
