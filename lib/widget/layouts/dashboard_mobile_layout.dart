import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widget/income/income_section.dart';
import 'package:responsive_dashboard/widget/my_card/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpansessAndQuickInvoiceSection(),
          ),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
