
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';

// class CustomStratgyContainer extends StatelessWidget {
//   final Color iconContainer;
//   final IconData icon;
//   final String text1;
//   final String text2;
//   final String text3;
//   final Color smallContainer;
//   final Color largeConatiner;
//   final Color? borderColor;
//   final double? width1;
//   final double? width2;
//   final double? width3;
//   final double? containerHeight;
//   final bool isshow;
//   final double? containerWidth;
//   final double? spaceHeight;
//   final String? extra;
//   final double? fontSize;
//   final double? mainHeight;
//   final double? spaceHeight2;
//   final int?flex1;
//   final int?flex;
//   final double?fontSize2;
//   final double?fontSize3;
  

//   const CustomStratgyContainer({
//     super.key,
//     required this.iconContainer,
//     required this.icon,
//     required this.text1,
//     required this.text2,
//     required this.text3,
//     required this.smallContainer,
//     required this.largeConatiner,
//     this.borderColor,
//     this.width1,
//     this.width2,
//     this.width3,
//     this.containerHeight,
//     this.containerWidth,
//     this.isshow = false,
//     this.spaceHeight,
//     this.extra,
//     this.fontSize,
//     this.mainHeight,
//     this.spaceHeight2, this.flex1, this.flex, this.fontSize2, this.fontSize3,
    
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final baseWidth = screenWidth * 0.9;
//     final baseHeight = baseWidth * (91 / 334);
//     final horizontalPadding = baseWidth * (10 / 334);
//     final verticalPadding = baseHeight * (10 / 91);
//     final iconSize = baseHeight * (24 / 91);
//     final textFontSize = baseWidth * 0.039;
//     final smallContainerWidth = baseWidth * (70 / 334);
//     final progressBarHeight = baseHeight * (5 / 91);
//     final progressBarWidth = baseWidth - (horizontalPadding * 2);

//     return Container(
//       width: containerWidth ?? baseWidth,
//       height: containerHeight ?? baseHeight,
//       decoration: BoxDecoration(
//         border: Border.all(color: borderColor ?? AppColors.greyColor, width: 1.5),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: verticalPadding),
//                       child: Container(
//                         width: iconSize,
//                         height: iconSize,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: iconContainer,
//                         ),
//                         child: Icon(
//                           icon,
//                           color: AppColors.whiteColor,
//                           size: iconSize * 0.8,
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: baseWidth * 0.02),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         MainText(text: text1, fontSize:fontSize2?? textFontSize),
//                         MainText(text: text2, fontSize: textFontSize, color: AppColors.teamColor, height: 1),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: verticalPadding),
//                   child: UseableContainer(
//                     fontSize: fontSize3,
//                     text: text3,
//                     width: width3 ?? smallContainerWidth,
//                     color: smallContainer,
//                   ),
//                 ),
//               ],
//             ),
//             if (isshow) SizedBox(height: spaceHeight ?? baseHeight * 0.05),
//             if (isshow)
//               MainText(
//                 text: extra ?? "",
//                 height: mainHeight,
//                 fontSize: fontSize ?? textFontSize,
//               ),
//             SizedBox(height: spaceHeight2 ?? baseHeight * 0.13),
//             Row(
//               children: [
//                 Expanded(
//                   flex:flex?? 3,
//                   child: Container(
//                     height: progressBarHeight,
//                     width: width1 ?? progressBarWidth,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: largeConatiner,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex:flex1?? 1,
//                   child: Container(
//                     height: progressBarHeight,
//                     width: width2 ?? 0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: AppColors.greyColor,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class CustomStratgyContainer extends StatelessWidget {
  final double?value;
  final Color iconContainer;
  final IconData icon;
  final String text1;
  final String text2;
  final String text3;
  final Color smallContainer;
  final Color largeConatiner;
  final Color? borderColor;
  final double? width1;
  final double? width2;
  final double? width3;
  final double? containerHeight;
  final bool isshow;
  final double? containerWidth;
  final double? spaceHeight;
  final String? extra;
  final double? fontSize;
  final double? mainHeight;
  final double? spaceHeight2;
  final int? flex1;
  final int? flex;
  final double? fontSize2;
  final double? fontSize3;
  final double?circleH;
  final double?circleW;
  final double?circleS;

  const CustomStratgyContainer({
    super.key,
    required this.iconContainer,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.smallContainer,
    required this.largeConatiner,
    this.borderColor,
    this.width1,
    this.width2,
    this.width3,
    this.containerHeight,
    this.containerWidth,
    this.isshow = false,
    this.spaceHeight,
    this.extra,
    this.fontSize,
    this.mainHeight,
    this.spaceHeight2,
    this.flex1,
    this.flex,
    this.fontSize2,
    this.fontSize3, this.circleH, this.circleW, this.circleS, this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth ?? double.infinity,
      height: containerHeight ?? 150.h,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor ?? AppColors.greyColor, width: 1.5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Container(
                        width:circleW?? 30.w,
                        height:circleH?? 24.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: iconContainer,
                        ),
                        child: Icon(
                          icon,
                          color: AppColors.whiteColor,
                          size:circleS?? 19.2.sp,
                        ),
                      ),
                    ),
                    SizedBox(width: 7.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainText(text: text1, fontSize: fontSize2 ?? 24.sp),
                        SizedBox(height: 10.h,),
                        MainText(text: text2, fontSize: 20.sp, color: AppColors.teamColor, height: 1),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: UseableContainer(
                    fontSize: 18.sp,
                    text: text3,
                    // width: width3 ?? 70.w,
                    color: smallContainer,
                  ),
                ),
              ],
            ),
            if (isshow) SizedBox(height: spaceHeight ?? 5.h),
            if (isshow)
              MainText(
                text: extra ?? "",
                height: mainHeight,
                fontSize: fontSize ?? 14.sp,
              ),
            SizedBox(height: spaceHeight2 ?? 25.h),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: flex ?? 3,
            //       child: Container(
            //         height: 8.h,
            //         width: width1 ?? 314.w,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20.r),
            //           color: largeConatiner,
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       flex: flex1 ?? 1,
            //       child: Container(
            //         height: 8.h,
            //         width: width2 ?? 0,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20.r),
            //           color: AppColors.greyColor,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
              LinearProgressIndicator(
  value:value?? 0.4, // 40%
  minHeight: 8.h,
  color:largeConatiner?? AppColors.forwardColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
),
          ],
        ),
      ),
    );
  }
}
