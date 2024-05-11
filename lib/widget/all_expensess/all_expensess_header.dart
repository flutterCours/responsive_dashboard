import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widget/widgets/container_header.dart';
import 'package:responsive_dashboard/widget/widgets/range_option.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContainerHeader(
      leadingText: 'All Expanded',
      action: RangeOption(),
    );
  }
}
