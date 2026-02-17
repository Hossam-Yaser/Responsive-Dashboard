import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: TextField(
        decoration: InputDecoration(
          maintainHintSize: true,
          fillColor: AppColors.lightGray,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.lightBlue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.lightBlue),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.lightBlue),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.lightBlue),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.lightBlue),
          ),

          hint: Text(
            'Search or type a command',
            style: AppTextStyles.labelRegular,
          ),

          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ),
    );
  }
}
