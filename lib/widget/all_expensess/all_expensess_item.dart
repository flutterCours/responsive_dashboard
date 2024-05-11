import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expansess_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/all_expensess/all_expensess_item_header.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.expensessitems, required this.isActive});
  final AllExpensessItemModel expensessitems;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4DB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: isActive ? const Color(0xFF4DB7F2) : const Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: expensessitems.image,
            isActive: isActive,
          ),
          const SizedBox(
            height: 34.0,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensessitems.title,
              style: isActive
                  ? AppStyles.styleMedium16(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensessitems.date,
              style: isActive
                  ? AppStyles.styleRegular14(context)
                      .copyWith(color: const Color(0xFFFAFAFA))
                  : AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensessitems.price,
              style: isActive
                  ? AppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
