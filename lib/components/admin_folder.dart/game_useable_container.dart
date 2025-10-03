import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class GameUseAbleContainer extends StatelessWidget {
  const GameUseAbleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw, // full screen width
      height: 330.h, // responsive height
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 3.33.w, // responsive border width
        ),
        borderRadius: BorderRadius.circular(25.r), // responsive radius
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10.h,
            left: -70.w,
            child: Image.asset(
              Appimages.game,
              width: 135.w,
              height: 135.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                MainText(
                  text: "odyssee_des_okr".tr,
                  fontSize: 30.sp.sp,
                ),
                SizedBox(height: 17.h),
                MainText(
                  text: "Objective & Key Result alignment\nthrough decision-making".tr,
                  fontSize: 30.sp.sp,
                  height: 1.3,
                  color: AppColors.teamColor,
                ),
                SizedBox(height: 17.h),
                Row(
                  children: [
                    UseableContainer(
                     
                      text: "ai_based".tr,
                      color: AppColors.orangeColor,
                   
                    ),
                    SizedBox(width: 7.w),
                    UseableContainer(
                    
                      text: "active".tr,
                     
                      color: AppColors.forwardColor,
                    )
                  ],
                ),
                SizedBox(height: 36.h),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Appimages.player2,
                          height: 56.h,
                          width: 41.w,
                        ),
                        SizedBox(width: 5.w),
                        MainText(
                          text: "12 Players",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(width: 17.w),
                    Row(
                      children: [
                        Image.asset(
                          Appimages.timeout2,
                          height: 56.h,
                          width: 41.w,
                        ),
                        SizedBox(width: 6.w),
                        MainText(
                          text: "60 min duration",
                          fontSize: 30.sp,
                          color: AppColors.redColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
