import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/widgets/all_players_container.dart';

class UserAdministrateSide extends StatelessWidget {
  const UserAdministrateSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),

          // Player Containers
          AllPlayersContainer(
            onTap: () => Get.toNamed(RouteName.userAdminDetailedScree),

            fontSize2: 12.sp,
            // onTap: () {}, // 👈 yahan empty callback
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            text3: "inactive".tr,
            color: AppColors.orangeColor,
            width: 60.w,
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            text3: "pending".tr,
            color: AppColors.redColor,
            width: 70.w,
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.prince2,
          ),
          SizedBox(height: 7.h),

          AllPlayersContainer(
            fontSize2: 12.sp,
            onTap: () {},
            text: "Alex Martinez",
            text2: "john.smith@company.com",
            image: Appimages.prince2,
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
