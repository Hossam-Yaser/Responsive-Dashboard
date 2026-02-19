import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/popular_products_heading.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/products_and_earning_heading.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/products_list_view_widget.dart';

class PopularProductsSection extends StatelessWidget {
  const PopularProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: AppColors.white,
      child: const Column(
        children: [
          PopularProductsHeading(),
          ProdctsAndEarningSubHeading(),
          ProductsListViewWidget(),
        ],
      ),
    );
  }
}
