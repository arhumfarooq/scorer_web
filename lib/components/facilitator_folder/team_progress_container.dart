import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';

class TeamProgressContainer extends StatelessWidget {
  const TeamProgressContainer({
    super.key,
    required this.controller,
  });

  final StageController controller;

  @override
  Widget build(BuildContext context) {
    // All dimensions are now based on flutter_screenutil, making the constructor parameters redundant.
    final double verticalSpacing = 30.h;

    return Container(
      // width: 375.w,
      width: double.infinity,
      height: 690.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5.w,
        ),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: verticalSpacing),
              BoldText(
                text: "team_progress".tr,
                selectionColor: AppColors.blueColor,
                fontSize: 24.sp,
              ),
              SizedBox(height: 12.h),
              Obx(() {
                return Row(
                  children: [
                    Expanded(
                      flex: controller.isCompleted.value ? 3 : 2,
                      child: Container(
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: AppColors.forwardColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: controller.isCompleted.value ? 0 : 2,
                      child: Container(
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(height: 12.h),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    BoldText(
                      text: controller.isCompleted.value
                          ? "5 of 5 submitted"
                          : "4 of 5 submitted",
                      fontSize: 20.sp,
                      selectionColor: AppColors.blueColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: verticalSpacing),
              PlayersContainers(
                text1: "1",
                text2: "You",
                image: Appimages.play1,
              ),
              SizedBox(height: verticalSpacing * 0.7),
              Obx(() {
                return PlayersContainers(
                  color: controller.isCompleted.value
                      ? AppColors.forwardColor
                      : AppColors.yellowColor,
                  text3: controller.isCompleted.value
                      ? "submitted".tr
                      : "working".tr,
                  text1: "2",
                  text2: "Sarah J.",
                  image: Appimages.play2,
                );
              }),
              SizedBox(height: verticalSpacing * 0.7),
              PlayersContainers(
                text1: "3",
                text2: "Mike C.",
                image: Appimages.play3,
              ),
              SizedBox(height: verticalSpacing * 0.7),
              PlayersContainers(
                text1: "4",
                text2: "David B.",
                image: Appimages.play4,
              ),
              SizedBox(height: verticalSpacing * 0.7),
              PlayersContainers(
                text1: "5",
                text2: "Lisa G.",
                image: Appimages.play5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
