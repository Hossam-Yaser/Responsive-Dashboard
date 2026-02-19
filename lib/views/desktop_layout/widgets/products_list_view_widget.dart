import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/product_cart.dart';

class ProductsListViewWidget extends StatelessWidget {
  const ProductsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          itemCount: AppAssets.productImages.length,
          itemBuilder: (context, index) {
            return ProductCart(imagePath: AppAssets.productImages[index]);
          },
        ),
      ),
    );
  }
}
