import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class ScenerioContainer extends StatelessWidget {
  const ScenerioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            BoldText(
              text: "scenario".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 30.sp,
            ),
            SizedBox(height: 15.h),

            MainText(
              height: 1.5,
              // text: "scenario_description".tr,\
              text: "Your team has been tasked with organizing a company retreat for 50 employees. You have a budget of \$15,000 and need to choose between three venue options. Each option has different benefits and constraints.",
              fontSize: 24.sp,
            ),
            SizedBox(height: 15.h),

            BoldText(
              text: "question".tr,
              selectionColor: AppColors.redColor,
              fontSize: 30.sp,
            ),
            SizedBox(height: 10.h),

            MainText(
              // text: "question_description".tr,
              text: "Which venue would you choose and why? Consider budget, team activities, and logistics.",
              fontSize: 24.sp,
              height: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
