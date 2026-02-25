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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final isSelected = index == selectedIndex;
                return GestureDetector(
                  onTap: () {
                    if (selectedIndex != index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    }
                  },
                  child: CategoryItemWidget(
                    iconPath: AppAssets.categoryIcons[index],
                    labelText: AppAssets.categoryNames[index],
                    isSelected: isSelected,
                  ),
                );
              }, childCount: AppAssets.categoryIcons.length),
            ),

            //logout item
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  GestureDetector(
                    onTap: () {
                      //logout logic here
                    },
                    child: const CategoryItemWidget(
                      iconPath: AppAssets.logoutIcon,
                      isSelected: true,
                      labelText: "LogOut",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
