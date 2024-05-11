import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/widgets/container_header.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerHeader(
      leadingText: 'Quick invoice',
      action: Container(
        height: 48,
        width: 48,
        decoration: const BoxDecoration(
          color: Color(0xFFFAFAFA),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.add,
          color: Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
