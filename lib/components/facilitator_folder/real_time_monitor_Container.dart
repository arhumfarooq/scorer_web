import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_text_row.dart';

class RealTimeMonitorContainer extends StatelessWidget {
  const RealTimeMonitorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double verticalSpacing = 25.h;

    return Container(
      width: double.infinity,
      height: 350.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5.w,
        ),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: verticalSpacing),
            BoldText(
              text: "real_time_monitoring".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 22.sp,
            ),
            SizedBox(height: verticalSpacing),
          LinearProgressIndicator(
  value: 0.4, // 👈 required (0.0 = empty, 1.0 = full)
  minHeight: 8.h,
  color: AppColors.forwardColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
),
            SizedBox(height: verticalSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainText(
                  text: "player_engagement".tr,
                  fontSize: 20.sp,
                ),
                BoldText(
                  text: "89%",
                  fontSize: 20.sp,
                  selectionColor: AppColors.blueColor,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            MainText(
              text: "recent_activity".tr,
              fontSize: 20.sp,
            ),
            SizedBox(height: 20.h,),
            UseableTextrow(
              color: AppColors.forwardColor,
              text: "Alex submitted response • 1m ago",
            ),
            SizedBox(height: 15.h,),

            UseableTextrow(
              color: AppColors.forwardColor2,
              text: "Sarah joined team discussion • 2m ago",
            ),
            SizedBox(height: 15.h,),

            UseableTextrow(
              color: AppColors.forwardColor3,
              text: "Mike went inactive • 5m ago",
            ),
          ],
        ),
      ),
    );
  }
}
