import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    super.key,
    required this.imagePath,
    this.customerName = 'Hossam Y.',
  });
  final String imagePath;
  final String customerName;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 34, child: Image.asset(imagePath)),
          Text(customerName, style: AppTextStyles.bodyMedium(context)),
        ],
      ),
    );
  }
}
