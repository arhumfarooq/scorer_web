// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';

// class ForwardButtonContainer extends StatelessWidget {
//   final String ?image;
//   final double?height1;
//   final double?height2;
//   final double?width1;
//   final double?width2;
//   const ForwardButtonContainer({super.key, this.image, this.height1, this.height2, this.width1, this.width2});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
// height:height1?? 62,
// width:width1?? 62,
// decoration: BoxDecoration(
//   color: AppColors.forwardColor.withOpacity(0.5),
//   shape: BoxShape.circle,
// ),
// child: Center(
//   child: Container(
//     height:height2?? 44,
//     width:width2?? 44,
//     decoration: BoxDecoration(
//       color: AppColors.forwardColor, // inner circle color, change as needed
//       shape: BoxShape.circle,
//     ),
//     child: Center(
//       child: SvgPicture.asset(
//       image ?? Appimages.forward,
//         width: 12, // icon ka proper size
//         height: 14,
//       ),
//     ),
//   ),
// ),
// );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';

class ForwardButtonContainer extends StatelessWidget {
  final String? image;
  final double? height1;
  final double? height2;
  final double? width1;
  final double? width2;
  final VoidCallback? onTap;

  const ForwardButtonContainer({
    super.key,
    this.image,
    this.height1,
    this.height2,
    this.width1,
    this.width2, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions using MediaQuery
    // final Size screenSize = MediaQuery.of(context).size;
    
    // A base width to scale from, e.g., a common phone width (iPhone 11)
    // const double baseWidth = 414.0;
    
    // Calculate a scaling factor based on the screen width
    // final double scaleFactor = screenSize.width / baseWidth;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height1 ?? 62.h,
        width: width1 ?? 62.w,
        decoration: BoxDecoration(
          color: AppColors.forwardColor.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            height: height2 ?? 44.h,
            width: width2 ?? 44.w,
            decoration: const BoxDecoration(
              color: AppColors.forwardColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                image ?? Appimages.forward,
                width: 12.w,
                height: 14.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}