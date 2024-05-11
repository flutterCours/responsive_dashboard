import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess.dart';
import 'package:responsive_dashboard/widget/quick_invoice/quick_invoice.dart';

class AllExpansessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24.0,
        ),
        QuickInvoice(),
        SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
