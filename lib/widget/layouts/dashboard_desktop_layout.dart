import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widget/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widget/income/income_section.dart';
import 'package:responsive_dashboard/widget/my_card/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpansessAndQuickInvoiceSection(),
                        ),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCardAndTransactionHistorySection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
