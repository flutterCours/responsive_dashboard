import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widget/drawer/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerModel> items = const [
    DrawerModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModel(image: Assets.imagesMyTransctions, title: 'My Transaction'),
    DrawerModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (isActive != index) {
              setState(() {
                isActive = index;
              });
            }
          },
          child: DrawerItem(
            drawerModel: items[index],
            isActive: isActive == index,
          )),
      itemCount: items.length,
    );
  }
}
