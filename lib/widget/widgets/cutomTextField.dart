import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xFFAAAAAA)),
        fillColor: const Color(0xFFAAAAAA),
        enabledBorder: CustomOutlineInputBorder(),
        focusedBorder: CustomOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder CustomOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFFFAFAFA),
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );
  }
}
