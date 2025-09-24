
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/useable_text_row.dart';

class TeamDistributionContainer extends StatelessWidget {
  const TeamDistributionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // You must call ScreenUtil.init() in your main.dart or a high-level widget
    // before using it. For example:
    // ScreenUtil.init(context, designSize: const Size(375, 812));

    return Container(
      width: double.infinity,
      // width: 336.w, // equivalent to screenWidth * 0.9
      height: 200.h, // Assuming a reasonable height
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.7.w,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.75.w, // equivalent to screenWidth * 0.05
          vertical: 8.12.h, // equivalent to screenHeight * 0.01
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            BoldText(
              text: "team_distribution".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 24.sp, // equivalent to screenWidth * 0.04
            ),
            SizedBox(height: 10.h),
            UseableTextrow(
              color: AppColors.forwardColor,
              text: "team_beta".tr,
              text1: "4 Players",
            ),
            SizedBox(height: 15.h),
            UseableTextrow(
              color: AppColors.forwardColor2,
              text: "team_gamma".tr,
              text1: "4 Players",
            ),
            SizedBox(height: 15.h),
            UseableTextrow(
              color: AppColors.forwardColor3,
              text: "team_alpha".tr,
              text1: "4 Players",
            ),
          ],
        ),
      ),
    );
  }
}
