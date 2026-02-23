import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/comments_section.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/popular_products_section.dart';

class ProductsAndCommentsSection extends StatelessWidget {
  const ProductsAndCommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Expanded(flex: 5, child: PopularProductsSection()),
          Expanded(flex: 4, child: CommentsSection()),
        ],
      ),
    );
  }
}
