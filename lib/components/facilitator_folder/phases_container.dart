

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class PhaseContainer extends StatelessWidget {
  const PhaseContainer({
    super.key,
  
  });

 

  @override
  Widget build(BuildContext context) {
    

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
                  text: "team_collaboration_phase".tr,
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
