import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';

class DefaultTimeContainer extends StatelessWidget {
  const DefaultTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 236.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor, width: 1.7.w),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            BoldText(
              text: "default_time_limit_per_phase".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 30.sp,
            ),
            SizedBox(height: 31.h),
            CustomSloderRow(
              text: "Phase 1",
              text2: "easy".tr,
              value: 15,
              width: 140.w,
              fontSize: 20.sp,
              width1: 10.w,
            ),
            SizedBox(height: 10.h),
            CustomSloderRow(
              text: "Phase 2",
              text2: "medium".tr,
              value: 20,
              color: AppColors.orangeColor,
               width: 140.w,
              fontSize: 20.sp,
              width1: 10.w,
            ),
            // SizedBox(height: 5.h),
            SizedBox(height: 10.h),

            CustomSloderRow(
              text: "Phase 3",
              text2: "hard".tr,
              value: 30,
              color: AppColors.redColor,
               width: 140.w,
              fontSize: 20.sp,
              width1: 10.w,
            ),
          ],
        ),
      ),
    );
  }
}
