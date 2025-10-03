import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';

class AdminTeamProgress extends StatelessWidget {
  const AdminTeamProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // pehle contentWidth tha
      height: 0.69.sh, // screenHeight * 0.69
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5.w, // pehle screenWidth * 0.004 tha
        ),
        borderRadius: BorderRadius.circular(24.r), // pehle screenWidth * 0.06
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              BoldText(
                text: "team_progress".tr,
                selectionColor: AppColors.blueColor,
                fontSize: 30.sp, // pehle screenWidth * 0.04
              ),
              SizedBox(height: 15.h),

              /// progress bar
             LinearProgressIndicator(
  value: 0.4, // 40%
  minHeight: 8.h,
  color:AppColors.forwardColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
),

              SizedBox(height: 15.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  BoldText(
                    text: "4 of 5 submitted",
                    fontSize: 14.sp,
                    selectionColor: AppColors.blueColor,
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              /// Players List
              PlayersContainers(
                text1: "1",
                text2: "You",
                image: Appimages.play1,
              ),
              SizedBox(height: 14.h),

              PlayersContainers(
                color: AppColors.yellowColor,
                text3: "working".tr,
                text1: "2",
                text2: "Sarah J.",
                image: Appimages.play2,
              ),
              SizedBox(height: 14.h),

              PlayersContainers(
                text1: "3",
                text2: "Mike C.",
                image: Appimages.play3,
              ),
              SizedBox(height: 14.h),

              PlayersContainers(
                text1: "4",
                text2: "David B.",
                image: Appimages.play4,
              ),
              SizedBox(height: 14.h),

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
