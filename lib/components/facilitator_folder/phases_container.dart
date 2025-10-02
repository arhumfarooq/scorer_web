
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer/components/responsive_fonts.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/widgets/main_text.dart';
// // import 'package:scorer/widgets/useable_container.dart';
// class PhaseContainer extends StatelessWidget {
//   const PhaseContainer({
//     super.key,
//     required this.horizontalPadding,
//     required this.contentWidth,
//     required this.screenHeight,
//     required this.screenWidth,
//   });

//   final double horizontalPadding;
//   final double contentWidth;
//   final double screenHeight;
//   final double screenWidth;

//   @override
//   Widget build(BuildContext context) {
//        final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final safeAreaTop = MediaQuery.of(context).padding.top;
//     final safeAreaBottom = MediaQuery.of(context).padding.bottom;

//     // A more direct way to get scaling factors
//     final double baseHeight = 812.0;
//     final double baseWidth = 414.0;
//     final double heightScaleFactor = screenHeight / baseHeight;
//     final double widthScaleFactor = screenWidth / baseWidth;

//     // bool isSpanish = Get.locale?.languageCode == 'es';

//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//       child: Container(
//         width: contentWidth,
//         height: screenHeight * 0.13,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(screenWidth * 0.03),
//           border: Border.all(
//               color: AppColors.selectLangugaeColor,
//               width: screenWidth * 0.004),
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: screenWidth * 0.025),
//           child: Column(
//             children: [
//               SizedBox(height: 10,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       SvgPicture.asset(Appimages.div,
//                           width: screenWidth * 0.05),
//                       SizedBox(width: screenWidth * 0.02),
//                       UseableContainer(
//                         text: "Phase 2",
//                         color: AppColors.orangeColor,
//                       ),
//                       SizedBox(width: screenWidth * 0.02),
//                      MainText(
//   text: "strategy_building".tr,
//   fontSize: ResponsiveFont.getFontSizeCustom(
// defaultSize: 14*widthScaleFactor,
// smallSize: 11*widthScaleFactor,
//   )
//                      ),
//                     ],
//                   ),
//                   UseableContainer(
//                       text: "active".tr,
//                       color: AppColors.selectLangugaeColor),
//                 ],
//               ),
//               SizedBox(height: screenHeight * 0.01),
//               Padding(
//                 padding:
//                     EdgeInsets.only(left: screenWidth * 0.08),
//                 child: MainText(
//                   height: 1.5,
//                     text: "team_collaboration_phase".tr,
//                   color: AppColors.teamColor,
//                   fontSize: screenWidth * 0.035,
//                 ),
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
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:scorer/components/responsive_fonts.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/main_text.dart';
// import 'package:scorer/widgets/useable_container.dart';
class PhaseContainer extends StatelessWidget {
  const PhaseContainer({
    super.key,
    // required this.horizontalPadding,
    // required this.contentWidth,
  });

  // final double horizontalPadding;
  // final double contentWidth;

  @override
  Widget build(BuildContext context) {
    // Note: The build method no longer needs to fetch screen dimensions
    // using MediaQuery as ScreenUtil handles it.
    
    // bool isSpanish = Get.locale?.languageCode == 'es';

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Container(
        width: double.infinity,
        // The original logic was screenHeight * 0.13. Using 130.h assumes a 812px height design.
        height: 202.h,
        decoration: BoxDecoration(
          // The original logic was screenWidth * 0.03. Using 30.w assumes a 414px width design.
          borderRadius: BorderRadius.circular(30.w),
          // The original logic was screenWidth * 0.004. Using 4.w assumes a 414px width design.
          border: Border.all(
              color: AppColors.selectLangugaeColor,
              width: 2.95.w),
        ),
        child: Padding(
          // The original logic was screenWidth * 0.025. Using 25.w assumes a 414px width design.
          padding: EdgeInsets.symmetric(
              horizontal: 25.w),
          child: Column(
            children: [
              SizedBox(height: 27.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // The original logic was screenWidth * 0.05. Using 50.w assumes a 414px width design.
                      SvgPicture.asset(Appimages.div,
                      height: 47.h,
                          width: 47.w),
                      SizedBox(width: 20.w),
                      UseableContainer(
                        text: "Phase 2",
                        color: AppColors.orangeColor,
                      ),
                      SizedBox(width: 20.w),
                     MainText(
                      text: "strategy_building".tr,
                      // The original logic scaled font size based on width.
                      // .sp units automatically handle this.
                      fontSize: 26.sp,
                     ),
                    ],
                  ),
                  UseableContainer(
                      text: "active".tr,
                      color: AppColors.selectLangugaeColor),
                ],
              ),
              // The original logic was screenHeight * 0.01. Using 10.h assumes a 812px height design.
              SizedBox(height: 10.h),
              Padding(
                // The original logic was screenWidth * 0.08. Using 80.w assumes a 414px width design.
                padding:
                    EdgeInsets.only(left: 80.w),
                child: MainText(
                  height: 1.5,
                  text: "Team collaboration and strategic planning phase",
                  color: AppColors.teamColor,
                  // The original logic was screenWidth * 0.035. Using 14.sp assumes a 414px width design.
                  fontSize: 26.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
