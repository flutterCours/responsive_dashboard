import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expansess_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_item.dart';

class AllExpensessListView extends StatefulWidget {
  const AllExpensessListView({super.key});

  @override
  State<AllExpensessListView> createState() => _AllExpensessListViewState();
}

class _AllExpensessListViewState extends State<AllExpensessListView> {
  static List<AllExpensessItemModel> items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isActive = 0;
            });
          },
          child: AllExpensessItem(
            isActive: isActive == 0,
            expensessitems: items[0],
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isActive = 1;
            });
          },
          child: AllExpensessItem(
            isActive: isActive == 1,
            expensessitems: items[1],
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isActive = 2;
            });
          },
          child: AllExpensessItem(
            isActive: isActive == 2,
            expensessitems: items[2],
          ),
        ),
      ),
    ]);
  }
}
