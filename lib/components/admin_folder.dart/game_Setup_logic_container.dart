import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/use_able_game_row.dart';

class GameLogicSetupContainer extends StatelessWidget {
  const GameLogicSetupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor, width: 1.5.w),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.h),
            BoldText(
              text: "game_logic_setup".tr,
              fontSize: 30.sp,
              selectionColor: AppColors.blueColor,
            ),
            SizedBox(height: 19.h),
            UseAbleGameRow(
              text1: 'Phase 1 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
            ),
            SizedBox(height: 20.h),
            UseAbleGameRow(
              text1: 'Phase 2 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
            ),
                      SizedBox(height: 20.h),

            UseAbleGameRow(
              text1: 'Phase 3 - Strategy',
              text2: '3 Stage - 1h 12 minutes',
            ),
          ],
        ),
      ),
    );
  }
}

class GameRow extends StatelessWidget {
  final double?fontsize;
  final String? text;

  const GameRow({super.key, this.text, this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MainText(
          text: text ?? "enable_leaderboard".tr,
          fontSize:fontsize?? 14.sp,
        ),
        FlutterSwitch(
          value: true,
          onToggle: (val) {},
          height: 30.h, // example responsive height
          width: 80.w, // example responsive width
          activeColor: AppColors.forwardColor,
          inactiveColor: AppColors.forwardColor,
        )
      ],
    );
  }
}
