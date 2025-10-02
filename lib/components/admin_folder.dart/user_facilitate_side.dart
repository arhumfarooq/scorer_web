import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/all_players_container.dart';

class UserFacilitateSide extends StatelessWidget {
  const UserFacilitateSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w, // 🔹 width scaled
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h), // 🔹 height scaled

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            fontSize2: 12.sp, // 🔹 font scaled
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            text3: "inactive".tr,
            color: AppColors.orangeColor,
            width: 60.w,
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            text3: "pending".tr,
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            color: AppColors.redColor,
            width: 70.w,
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            // onTap: () => Get.toNamed(RouteName.userFacilitateDetailedScree),
            fontSize2: 12.sp,
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.facil2,
          ),

          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
