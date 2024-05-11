import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/widgets/custom_button.dart';
import 'package:responsive_dashboard/widget/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hintText: 'Type customer name'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hintText: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item name', hintText: 'Type customer name'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: TitleTextField(title: 'Item mount', hintText: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(),
            ),
            SizedBox(
              width: 24.0,
            ),
            Expanded(
              child: CustomButton(
                backgroundColor: Color(0xFF4EB7F2),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
