import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/transaction_history/transaction_history_item.dart';
import 'package:responsive_dashboard/widget/widgets/container_header.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});
  static List items = const [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerHeader(
          leadingText: 'Transaction History',
          action: Text(
            'See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFF4EB7F2)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: items
              .map((e) => TransactionHistoryItem(transactionModel: e))
              .toList(),
        ),
      ],
    );
  }
}
