import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({
    super.key,
    required this.leadingText,
    this.action,
  });
  final String leadingText;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leadingText,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        action ?? const SizedBox(),
      ],
    );
  }
}
