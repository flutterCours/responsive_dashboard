import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/my_card/my_card_section.dart';
import 'package:responsive_dashboard/widget/transaction_history/transaction_history_section.dart';
import 'package:responsive_dashboard/widget/widgets/custom_background_container.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
