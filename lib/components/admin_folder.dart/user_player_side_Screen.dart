import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/constants/routename.dart';
// import 'package:scorer/widgets/all_players_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/widgets/all_players_container.dart';

class UserPlayerSideScreen extends StatelessWidget {
  const UserPlayerSideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w), // ✅ screen utils
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h), // ✅ height with .h
      
          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            fontSize2: 12.sp, // ✅ font size with .sp
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            text3: "inactive".tr,
            color: AppColors.orangeColor,
            width: 65.w, // ✅ width with .w
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            text3: "pending".tr,
            color: AppColors.redColor,
            width: 80.w,
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 7.h),
      
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userPlayerDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.player2,
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
