import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import for .h, .w, .sp extensions
// import 'package:scorer/constants/appcolors.dart'; // Assuming this exists
// import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart'; // Assuming this exists

class CustomTimeRow extends StatelessWidget {
  const CustomTimeRow({
    super.key,
  });

  // Removed final double heightScaleFactor;
  // Removed final double widthScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // --- Widget 1: Time Duration ---
        Expanded(
          child: Container(
            // Dimensions now use ScreenUtil extensions
            height: 180.h,
            width: 105.w, 
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7.w, // Use .w for border width
              ),
              borderRadius: BorderRadius.circular(35.r), // Use .r for radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "2:98",
                  selectionColor: AppColors.redColor,
                  fontSize: 30.sp, // Use .sp for font size
                ),
                BoldText(
                  text: "time".tr,
                  fontSize: 24.sp, // Use .sp for font size
                  selectionColor: AppColors.blueColor,
                  textAlign: TextAlign.center,
                ),
                BoldText(
                  text: "duration".tr,
                                   fontSize: 24.sp, // Use .sp for font size

                  selectionColor: AppColors.blueColor,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10.w), // Use .w for horizontal spacing

        // --- Widget 2: Active Players ---
        Expanded(
          child: Container(
            // Dimensions now use ScreenUtil extensions
            height: 180.h,
            width: 105.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7.w,
              ),
              borderRadius: BorderRadius.circular(35.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "12",
                  selectionColor: AppColors.forwardColor,
                  fontSize: 30.sp,
                ),
                BoldText(
                  text: "active".tr,
                  textAlign: TextAlign.center,
                  fontSize: 24.sp,
                  selectionColor: AppColors.blueColor,
                ),
                BoldText(
                  text: "players".tr,
                  textAlign: TextAlign.center,
                  fontSize: 24.sp,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 10.w), // Use .w for horizontal spacing

        // --- Widget 3: Total Phases ---
        Expanded(
          child: Container(
            // Dimensions now use ScreenUtil extensions
            height: 180.h,
            width: 105.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7.w,
              ),
              borderRadius: BorderRadius.circular(35.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoldText(
                  text: "03",
                  selectionColor: AppColors.redColor,
                  fontSize: 30.sp,
                ),
                BoldText(
                  text: "total".tr,
                  textAlign: TextAlign.center,
                  fontSize: 24.sp,
                  selectionColor: AppColors.blueColor,
                ),
                BoldText(
                  text: "phases".tr,
                  textAlign: TextAlign.center,
                  fontSize: 24.sp,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
