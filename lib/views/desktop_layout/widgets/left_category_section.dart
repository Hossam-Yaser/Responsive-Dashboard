import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/category_item_widget.dart';

class LeftCategorySection extends StatefulWidget {
  const LeftCategorySection({super.key});

  @override
  State<LeftCategorySection> createState() => _LeftCategorySectionState();
}

class _LeftCategorySectionState extends State<LeftCategorySection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: CategoryItemWidget(
                    iconPath: AppAssets.categoryIcons[index],
                    labelText: AppAssets.categoryNames[index],
                    isSelected: isSelected,
                  ),
                );
              },
              itemCount: AppAssets.categoryIcons.length,
            ),
          ),

          //logout item
          GestureDetector(
            onTap: () {
              //logout logic here
            },
            child: CategoryItemWidget(
              iconPath: AppAssets.logoutIcon,
              isSelected: true,
              labelText: "LogOut",
            ),
          ),
        ],
      ),
    );
  }
}
