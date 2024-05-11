import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widget/income/income_section_body.dart';
import 'package:responsive_dashboard/widget/widgets/container_header.dart';
import 'package:responsive_dashboard/widget/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widget/widgets/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          ContainerHeader(
            leadingText: 'Income',
            action: RangeOption(),
          ),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
