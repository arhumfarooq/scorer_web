import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Added ScreenUtil import

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class PhaseBreakDownContainer extends StatelessWidget {
  const PhaseBreakDownContainer({
    super.key,
    // Removed redundant scale factors
  });

  // Removed final double widthScaleFactor;
  // Removed final double heightScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Dimensions now use ScreenUtil extensions
      width: double.infinity, 
      height: 330.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5.w, // Border width uses .w
        ),
        borderRadius: BorderRadius.circular(24.r), // Radius uses .r
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w), // Padding uses .w
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h), // Vertical spacing uses .h
            BoldText(
              text: "Phase Breakdown",
              fontSize: 28.sp, // Font size uses .sp
              selectionColor: AppColors.blueColor,
            ),
            SizedBox(height: 19.h), // Vertical spacing uses .h
            // --- Phase 1 Row ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.h, // Uses .h
                      width: 30.w, // Uses .w
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.forwardColor,
                      ),
                      child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        size: 18.sp, // Icon size uses .sp
                      ),
                    ),
                    SizedBox(width: 6.w), // Horizontal spacing uses .w
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainText(
                          text: "Phase 1 - Strategy",
                          fontSize: 24.sp, // Font size uses .sp
                        ),
                        MainText(
                          text: "1h 12 minutes",
                          color: AppColors.teamColor,
                          fontSize: 20.sp, // Font size uses .sp
                          height: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                MainText(
                  text: "Avg: 850 pts",
                  fontSize: 20.sp, // Font size uses .sp
                )
              ],
            ),
            SizedBox(height: 19.h), // Vertical spacing uses .h
            // --- Phase 2 Row ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.h, // Uses .h
                      width: 30.w, // Uses .w
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.forwardColor,
                      ),
                      child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        size: 18.sp, // Icon size uses .sp
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainText(
                          text: "Phase 2 - Execution",
                          fontSize: 24.sp,
                        ),
                        MainText(
                          text: "1h 12 minutes",
                          color: AppColors.teamColor,
                          fontSize: 20.sp,
                          height: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                MainText(
                  text: "Avg: 850 pts",
                  fontSize: 20.sp,
                )
              ],
            ),
            SizedBox(height: 19.h), // Vertical spacing uses .h
            // --- Phase 3 Row ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.h, // Uses .h
                      width: 30.w, // Uses .w
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.forwardColor,
                      ),
                      child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        size: 18.sp, // Icon size uses .sp
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainText(
                          text: "Phase 3 - Strategy",
                          fontSize: 24.sp,
                        ),
                        MainText(
                          text: "1h 12 minutes",
                          color: AppColors.teamColor,
                          fontSize: 20.sp,
                          height: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                MainText(
                  text: "Avg: 850 pts",
                  fontSize: 20.sp,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
