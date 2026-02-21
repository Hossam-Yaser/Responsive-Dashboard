import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_text_styles.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.iconPath,
    required this.isSelected,
    required this.labelText,
  });
  final String iconPath;
  final String labelText;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      leading: FittedBox(
        fit: BoxFit.scaleDown,
        child: SvgPicture.asset(
          width: 36,
          height: 36,
          iconPath,
          //use colorfilter instead of color to change the color of svg
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.black : AppColors.slateGray,
            BlendMode.srcIn,
          ),
        ),
      ),
      title: Text(
        labelText,
        maxLines: 1,
        style: isSelected
            ? AppTextStyles.bodyLarge(context).copyWith(color: AppColors.black)
            : AppTextStyles.bodyLarge(context),
      ),
      tileColor: isSelected ? AppColors.lightGray : AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
// Padding(
//       padding: const EdgeInsets.only(bottom: 15.0),
//       child: Container(
//         alignment: Alignment.centerLeft,
//         padding: const EdgeInsets.all(11),
//         height: 52,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: isSelected ? AppColors.lightGray : AppColors.white,
//         ),
//         child: FittedBox(
//           child: Row(
//             children: [
//               SvgPicture.asset(
//                 width: 36,
//                 height: 36,
//                 iconPath,
//                 //use colorfilter instead of color to change the color of svg
//                 colorFilter: ColorFilter.mode(
//                   isSelected ? AppColors.black : AppColors.slateGray,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               horizontalSpacing(19),
//               Text(
//                 labelText,
//                 style: isSelected
//                     ? AppTextStyles.bodyLarge(
//                         context,
//                       ).copyWith(color: AppColors.black)
//                     : AppTextStyles.bodyLarge(context),
//               ),
//             ],
//           ),
//         ),
//       ),
//     )