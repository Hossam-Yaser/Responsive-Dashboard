import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';
import 'package:responsive_dashboard/utils/spacing.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/customer_list_generator.dart';
import 'package:responsive_dashboard/views/desktop_layout/widgets/customers_and_money_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OverviewMobileWidget extends StatefulWidget {
  const OverviewMobileWidget({super.key});

  @override
  State<OverviewMobileWidget> createState() => _OverviewMobileWidgetState();
}

class _OverviewMobileWidgetState extends State<OverviewMobileWidget> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: AppColors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Overview', style: AppTextStyles.heading2(context)),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              children: const [
                CustomersAndMoneyInfo(percentage: 8),
                CustomersAndMoneyInfo(
                  backgroundColor: AppColors.lightGray,
                  headingText: 'Income',
                  numbersText: "\$39,403,450",
                  percentage: 8.5,
                ),
              ],
            ),
          ),
          verticalSpacing(16),
          SmoothPageIndicator(
            controller: _controller,
            count: 2,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.black,
            ),
          ),
          textSeparator(context),
          const CustomerListGenerator(),
        ],
      ),
    );
  }

  Align textSeparator(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Welcome  to our new online experience",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyles.bodyMedium(context),
      ),
    );
  }
}
