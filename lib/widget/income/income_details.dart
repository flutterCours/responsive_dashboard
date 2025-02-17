import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/widget/income/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208CC8), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xFF4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xFF064061), title: 'Product royalty', value: '20%'),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
