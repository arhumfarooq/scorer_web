import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class ABCDContainer extends StatelessWidget {
  const ABCDContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 131.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.forwardColor,
          width: 2.w,
        ),
        borderRadius: BorderRadius.circular(60.r),
        color: AppColors.forwardColor.withOpacity(0.1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BoldText(
              text: "team_code".tr,
              fontSize: 32.sp,
              selectionColor: AppColors.blueColor,
            ),
            Row(
              children: [
                MainText(
                  text: "ABC123",
                  color: AppColors.forwardColor,
                  fontSize: 49.sp,
                  fontFamily: "gotham",
                ),
                SizedBox(width: 10.w),
                Container(
                  width: 65.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.forwardColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      Appimages.copy,
                      color: AppColors.whiteColor,
                      height: 32.h,
                      width: 32.w,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
