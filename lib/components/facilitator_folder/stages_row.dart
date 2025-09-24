

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';

// class StagesRow extends StatelessWidget {
//   final StageController controller = Get.find<StageController>();
//   StagesRow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final horizontalPadding = screenWidth * 0.05; 
//     final cardWidth = (screenWidth - (horizontalPadding * 2) - (4 * 4)) / 3; 
//     final cardHeight = cardWidth * 1.22; 
//     final circleSize = cardWidth * 0.25; 
//     final spacing = screenWidth * 0.01; 

//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Container(
//               width: cardWidth,
//               height: cardHeight,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(24),
//                 color: AppColors.forwardColor,
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: cardHeight * 0.19),
//                   Container(
//                     width: circleSize,
//                     height: circleSize,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: AppColors.whiteColor,
//                       border: Border.all(color: AppColors.forwardColor, width: 1.5),
//                     ),
//                     child: Icon(
//                       Icons.check,
//                       color: AppColors.forwardColor,
//                       size: circleSize * 0.8,
//                       weight: 9,
//                     ),
//                   ),
//                   SizedBox(height: cardHeight * 0.07),
//                   BoldText(text: "stage1".tr, fontSize: cardWidth * 0.16, selectionColor: AppColors.whiteColor),
//                   MainText(text: "8:42min", fontSize: cardWidth * 0.12, color: AppColors.whiteColor, height: 1.5),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(width: spacing),
//           Container(
//             width: spacing * 4,
//             height: 6,
//             decoration: BoxDecoration(
//               color: AppColors.forwardColor,
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           SizedBox(width: spacing),
//           Obx(() {
//             return controller.isCompleted.value
//                 ? Expanded(
//                     child: Container(
//                       width: cardWidth,
//                       height: cardHeight,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         color: AppColors.forwardColor,
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: cardHeight * 0.19),
//                           Container(
//                             width: circleSize,
//                             height: circleSize,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.whiteColor,
//                               border: Border.all(color: AppColors.forwardColor, width: 1.5),
//                             ),
//                             child: Icon(
//                               Icons.check,
//                               color: AppColors.forwardColor,
//                               size: circleSize * 0.8,
//                               weight: 9,
//                             ),
//                           ),
//                           SizedBox(height: cardHeight * 0.07),
//                           BoldText(text: "stage2".tr, fontSize: cardWidth * 0.16, selectionColor: AppColors.whiteColor),
//                           MainText(text: "8:19min", fontSize: cardWidth * 0.12, color: AppColors.whiteColor, height: 1.5),
//                         ],
//                       ),
//                     ),
//                   )
//                 : Expanded(
//                     child: Container(
//                       width: cardWidth,
//                       height: cardHeight,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         border: Border.all(color: AppColors.orangeColor, width: 1.7),
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: cardHeight * 0.19),
//                           Container(
//                             width: circleSize,
//                             height: circleSize,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.orangeColor,
//                             ),
//                             child: Center(
//                               child: MainText(
//                                 text: "2",
//                                 fontSize: circleSize * 0.58,
//                                 color: AppColors.whiteColor,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: cardHeight * 0.07),
//                           BoldText(text: "stage2".tr, selectionColor: AppColors.blueColor, fontSize: cardWidth * 0.16),
//                         ],
//                       ),
//                     ),
//                   );
//           }),
//           SizedBox(width: spacing),
//           Container(
//             width: spacing * 4,
//             height: 6,
//             decoration: BoxDecoration(
//               color: AppColors.smallColor,
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//           SizedBox(width: spacing),
//           Expanded(
//             child: Container(
//               width: cardWidth,
//               height: cardHeight,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(24),
//                 border: Border.all(color: AppColors.containerColor, width: 1.7),
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(height: cardHeight * 0.19),
//                   Container(
//                     width: circleSize,
//                     height: circleSize,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: AppColors.containerColor,
//                     ),
//                     child: Center(
//                       child: MainText(
//                         text: "3",
//                         fontSize: circleSize * 0.58,
//                         color: AppColors.whiteColor,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: cardHeight * 0.07),
//                   BoldText(text:   "stage3".tr, selectionColor: AppColors.containerColor, fontSize: cardWidth * 0.16),
//                   MainText(text: "10:00min", fontSize: cardWidth * 0.12, color: AppColors.containerColor, height: 1.5),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/controllers/stage_controllers.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class StagesRow extends StatelessWidget {
  final StageController controller = Get.find<StageController>();
  StagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    // Replaced all complex calculations with direct ScreenUtil units
    final horizontalPadding = 50.w;
    final spacing = 10.w;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 220.h, // Using a direct height value based on the original ratio
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: AppColors.forwardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 21.h), // Converted from cardHeight * 0.19
                  Container(
                    width: 30.w, // Converted from cardWidth * 0.25.w
                    height: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor,
                      border: Border.all(color: AppColors.forwardColor, width: 1.5.w),
                    ),
                    child: Icon(
                      Icons.check,
                      color: AppColors.forwardColor,
                      size: 25.sp, // Converted from circleSize * 0.8
                    ),
                  ),
                  SizedBox(height: 8.h), // Converted from cardHeight * 0.07
                  BoldText(text: "stage1".tr, fontSize: 24.sp, selectionColor: AppColors.whiteColor), // Converted from cardWidth * 0.16.sp
                  MainText(text: "8:42min", fontSize: 22.sp, color: AppColors.whiteColor, height: 1.5), // Converted from cardWidth * 0.12.sp
                ],
              ),
            ),
          ),
          SizedBox(width: spacing),
          Container(
            width: spacing * 4,
            height: 6.h,
            decoration: BoxDecoration(
              color: AppColors.forwardColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          SizedBox(width: spacing),
          Obx(() {
            return controller.isCompleted.value
                ? Expanded(
                    child: Container(
                      height: 220.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        color: AppColors.forwardColor,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 21.h),
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.whiteColor,
                              border: Border.all(color: AppColors.forwardColor, width: 1.5.w),
                            ),
                            child: Icon(
                              Icons.check,
                              color: AppColors.forwardColor,
                              size: 25.w,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          BoldText(text: "stage2".tr, fontSize: 24.sp, selectionColor: AppColors.whiteColor),
                          MainText(text: "8:19min", fontSize: 22.sp, color: AppColors.whiteColor, height: 1.5),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: Container(
                      height: 220.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.r),
                        border: Border.all(color: AppColors.orangeColor, width: 1.7.w),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 21.h),
                          Container(
                            width: 30.w,
                            height: 30.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.orangeColor,
                            ),
                            child: Center(
                              child: MainText(
                                text: "2",
                                fontSize: 20.sp, // Converted from circleSize * 0.58.sp
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          BoldText(text: "stage2".tr, selectionColor: AppColors.blueColor, fontSize: 24.sp),
                        ],
                      ),
                    ),
                  );
          }),
          SizedBox(width: spacing),
          Container(
            width: spacing * 4,
            height: 6.h,
            decoration: BoxDecoration(
              color: AppColors.smallColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          SizedBox(width: spacing),
          Expanded(
            child: Container(
              height: 220.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(color: AppColors.containerColor, width: 1.7.w),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 21.h),
                  Container(
                    width: 30.w,
                    height: 30.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerColor,
                    ),
                    child: Center(
                      child: MainText(
                        text: "3",
                        fontSize: 20.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  BoldText(text: "stage3".tr, selectionColor: AppColors.containerColor, fontSize: 24.sp),
                  MainText(text: "10:00min", fontSize: 20.sp, color: AppColors.containerColor, height: 1.5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
