import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_header.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_item_list_view.dart';
import 'package:responsive_dashboard/widget/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20.0,
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessListView(),
        ],
      ),
    );
  }
}
