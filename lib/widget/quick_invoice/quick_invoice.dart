import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dashboard/widget/quick_invoice/quick_invoice_heade.dart';
import 'package:responsive_dashboard/widget/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widget/widgets/latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24.0,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24.0,
          ),
          LatestTransaction(),
          Divider(
            height: 48.0,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
