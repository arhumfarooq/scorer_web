import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/game_select_controller.dart';
import 'package:scorer_web/widgets/main_text.dart';

class CompleteSessionRow extends StatelessWidget {
  const CompleteSessionRow({
    super.key,
    required this.controller,
  });

  final GameSelectController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // First circle
        Container(
          height: 30.w,
          width: 30.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.forwardColor,
          ),
          child: Center(
            child: Icon(
              Icons.check,
              size: 20.w,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        SizedBox(width: 7.w),

        // First line
        Expanded(
          flex: 1,
          child: Container(
            width: 120.w,
            height: 8.h,
            decoration: BoxDecoration(
              color: AppColors.forwardColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
        ),
        SizedBox(width: 7.w),

        // Second circle
        controller.currentPhase.value >= 1
            ? Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.forwardColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    size: 20.sp,
                    color: AppColors.whiteColor,
                  ),
                ),
              )
            : Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.orangeColor,
                ),
                child: Center(
                  child: MainText(
                    text: "2",
                    color: AppColors.whiteColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
        SizedBox(width: 7.w),

        // Second line
        Expanded(
          flex: 1,
          child: Container(
            width: 120.w,
            height: 8.h,
            decoration: BoxDecoration(
              color: controller.currentPhase.value >= 2
                  ? AppColors.forwardColor
                  : AppColors.greyColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
        ),
        SizedBox(width: 7.w),

        // Third circle
        controller.currentPhase.value >= 2
            ? Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.forwardColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    size: 20.w,
                    color: AppColors.whiteColor,
                  ),
                ),
              )
            : Container(
                height: 30.w,
                width: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greyColor,
                ),
                child: Center(
                  child: MainText(
                    text: "3",
                    color: AppColors.whiteColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
      ],
    ));
  }
}
