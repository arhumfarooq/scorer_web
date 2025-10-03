import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/game_select_controller.dart';
import 'package:scorer_web/widgets/custom_stratgy_container.dart';

class PhaseStrategyColumn extends StatelessWidget {
  const PhaseStrategyColumn({
    super.key,
    required this.controller,
  });

  final GameSelectController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Column(
      children: [
        CustomStratgyContainer(
        
          // width3: 80.w,
          iconContainer: AppColors.forwardColor,
          icon: Icons.check,
          text1: "phase1_strategy".tr,
          text2: "Completed • 20 min",
          text3: "completed".tr,
          smallContainer: AppColors.forwardColor,
          largeConatiner: AppColors.forwardColor,
         value: 1,
        ),
        SizedBox(height: 10.h),

        // Phase 2
        if (controller.currentPhase.value >= 1)
          CustomStratgyContainer(
          
             iconContainer: AppColors.forwardColor,
            icon: Icons.check,
          
            text1: "phase2_strategy".tr,
            text2: "Active • 30 min",
            text3: "active".tr,
            smallContainer: AppColors.forwardColor,
          largeConatiner: AppColors.forwardColor,
            value: 1
            ,
          )
        else
          CustomStratgyContainer(
          
            iconContainer: AppColors.selectLangugaeColor,
            icon: Icons.play_arrow_sharp,
            text1: "phase2_strategy".tr,
            text2: "Upcoming • 25 min",
            text3: "Active",
          smallContainer: AppColors.selectLangugaeColor,
            largeConatiner: AppColors.selectLangugaeColor,
            value: 0.4

          ),
        SizedBox(height: 10.h),

        // Phase 3
        if (controller.currentPhase.value >= 2)
          CustomStratgyContainer(
            fontSize2: ResponsiveFont.getFontSizeCustom(
              defaultSize: 14.w,
              smallSize: 10.w,
            ),
            iconContainer: AppColors.forwardColor,
            icon: Icons.check,
            text1: "phase3_implementation".tr,
            text2: "Completed • 20 min",
            text3: "Completed",
            smallContainer: AppColors.forwardColor,
            largeConatiner: AppColors.forwardColor,
          value: 1
          ,
          )
        else
          CustomStratgyContainer(
         
            iconContainer: AppColors.watchColor,
            icon: Icons.watch_later,
            text1: "phase3_implementation".tr,
            text2: "Upcoming • 25 min",
            text3: "Pending",
            smallContainer: AppColors.watchColor,
            largeConatiner: AppColors.greyColor,
           value: 0.5
           ,
          ),
        SizedBox(height: 10.h),

        // Phase 4
        if (controller.currentPhase.value >= 2)
          CustomStratgyContainer(
          
            iconContainer: AppColors.selectLangugaeColor,
            icon: Icons.play_arrow_sharp,
            text1: "phase4_evaluation".tr,
            text2: "Upcoming • 15 min",
            text3: "Active",
            smallContainer: AppColors.selectLangugaeColor,
            largeConatiner: AppColors.selectLangugaeColor,
          )
        else
          CustomStratgyContainer(
         
            iconContainer: AppColors.watchColor,
            icon: Icons.watch_later,
            text1: "phase4_evaluation".tr,
            text2: "Upcoming • 15 min",
            text3: "Pending",
            smallContainer: AppColors.watchColor,
            largeConatiner: AppColors.greyColor,
          value: 1,
          ),
      ],
    ));
  }
}
