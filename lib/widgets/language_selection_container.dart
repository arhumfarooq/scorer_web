// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/widgets/bold_text.dart';

// class LanguageSelectionContainer extends StatelessWidget {
//   final VoidCallback onTap;
//   final String text;
//   final String image; // can be svg or png/jpg
//   final bool isSelected;

//   const LanguageSelectionContainer({
//     super.key,
//     required this.text,
//     required this.image,
//     required this.isSelected,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     Widget buildImage() {
//       if (image.toLowerCase().endsWith(".svg")) {
//         return SvgPicture.asset(
//           image,
//           width: 35.w ,
//           height: 35.h ,
//         );
//       } else {
//         return Image.asset(
//           image,
//           width: 35.w ,
//           height: 35.h ,
//           fit: BoxFit.contain,
//         );
//       }
//     }


//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: double.infinity,
//         height: 74.h,
//         decoration: BoxDecoration(
//           color: isSelected ? AppColors.selectLangugaeColor : Colors.transparent,
//           borderRadius: BorderRadius.circular(26.r ),
//           border: Border.all(
//             color: isSelected
//                 ? AppColors.selectLangugaeColor.withOpacity(0.1)
//                 : AppColors.borderColor.withOpacity(0.25),
//             width: 2.w 
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 13.w ),
//           child: Row(
//             children: [
//               buildImage(),
//               SizedBox(width: 17.w ),
//               BoldText(
//                 text: text,
//                 selectionColor: isSelected
//                     ? AppColors.whiteColor
//                     : AppColors.languageTextColor,
//                 fontSize: 20 
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';

class LanguageSelectionContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image;
  final bool isSelected;

  const LanguageSelectionContainer({
    super.key,
    required this.text,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      if (image.toLowerCase().endsWith(".svg")) {
        return SvgPicture.asset(
          image,
          width: 30.w,
          height: 30.h,
        );
      } else {
        return Image.asset(
          image,
          width: 30.w,
          height: 30.h,
          fit: BoxFit.contain,
        );
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 65.h,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.selectLangugaeColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected
                ? AppColors.selectLangugaeColor.withOpacity(0.1)
                : AppColors.borderColor.withOpacity(0.25),
            width: 1.5.w,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            children: [
              buildImage(),
              SizedBox(width: 12.w),
              Expanded(
                child: BoldText(
                  text: text,
                  selectionColor: isSelected
                      ? AppColors.whiteColor
                      : AppColors.languageTextColor,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  