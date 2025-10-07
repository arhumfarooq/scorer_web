import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class MetricesContainer extends StatelessWidget {
  const MetricesContainer({
    super.key,
  });

  // screenWidth and screenHeight parameters have been removed.

  @override
  Widget build(BuildContext context) {
    return Container(
      // Original: width: screenWidth * 0.9
      // width: 0.9.sw,
      // Original: height: screenHeight * 0.35
      height: 400.h,
      decoration: BoxDecoration(
        // Original border width: 1.7
        border: Border.all(color: AppColors.greyColor, width: 1.7.w),
        // Original border radius: 24
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        // Original horizontal padding was screenWidth * 0.05. Scaling to a fixed 20.w.
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            // Original height: screenHeight * 0.025. Scaling to 25.h
            SizedBox(height: 25.h),
            BoldText(
              text: "engagement_metrics".tr,
              // Original font size was screenWidth * 0.04. Scaling to 16.sp
              fontSize: 30.sp,
              selectionColor: AppColors.blueColor,
            ),
            // Original height: screenHeight * 0.02. Scaling to 20.h
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    BoldText(
                      text: "85%",
                      // Original font size was screenWidth * 0.06. Scaling to 24.sp
                      fontSize: 26.sp,
                      selectionColor: AppColors.forwardColor,
                    ),
                    BoldText(
                      text: "participation".tr,
                      // Original font size was screenWidth * 0.04. Scaling to 16.sp
                      fontSize: 28.sp,
                      selectionColor: AppColors.blueColor,
                    ),
                  ],
                ),
                // Original width: screenWidth * 0.08. Scaling to 30.w
                SizedBox(width: 50.w),
                Column(
                  children: [
                    BoldText(
                      text: "85%",
                      // Original font size was screenWidth * 0.06. Scaling to 24.sp
                      fontSize: 26.sp,
                      selectionColor: AppColors.forwardColor,
                    ),
                    BoldText(
                      text: "participation".tr,
                      // Original font size was screenWidth * 0.04. Scaling to 16.sp
                      fontSize: 28.sp,
                      selectionColor: AppColors.blueColor,
                    ),
                  ],
                ),
              ],
            ),
            // Original height: screenHeight * 0.025. Scaling to 25.h
            SizedBox(height: 25.h),
             LinearProgressIndicator(
  value:0.4, // 40%
  minHeight: 8.h,
  color: AppColors.forwardColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
),   // Original height: screenHeight * 0.02. Scaling to 20.h
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainText(
                  text: "active_players".tr,
                  // Original font size was screenWidth * 0.035. Scaling to 14.sp
                  fontSize: 22.sp,
                ),
                BoldText(
                  text: "10/12",
                  // Original font size was screenWidth * 0.04. Scaling to 16.sp
                  fontSize: 22.sp,
                  selectionColor: AppColors.blueColor,
                )
              ],
            ),
            // Original height: screenHeight * 0.02. Scaling to 20.h
            SizedBox(height: 20.h),
            // Duplicated progress bar structure
           LinearProgressIndicator(
  value:0.4, // 40%
  minHeight: 8.h,
  color: AppColors.forwardColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
),   
            // Original height: screenHeight * 0.02. Scaling to 20.h
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainText(
                  text: "avg_response_time".tr,
                  // Original font size was screenWidth * 0.035. Scaling to 14.sp
                  fontSize: 22.sp,
                ),
                BoldText(
                  text: "32s",
                  // Original font size was screenWidth * 0.04. Scaling to 16.sp
                  fontSize: 22.sp,
                  selectionColor: AppColors.blueColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
