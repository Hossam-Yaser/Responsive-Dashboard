import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(imagePath)),
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product',
            style: AppTextStyles.bodySmall(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'UI Kit',
            style: AppTextStyles.bodySmall(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: Text(
        '\$5461',
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.bodyMedium(
          context,
        ).copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
