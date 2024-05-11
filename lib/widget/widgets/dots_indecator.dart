import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/widgets/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.activeDot});
  final int activeDot;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(isActive: activeDot == index),
        ),
      ),
    );
  }
}
