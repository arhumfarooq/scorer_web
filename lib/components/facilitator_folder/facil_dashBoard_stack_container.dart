
  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:get/get.dart';
  // import 'package:scorer/constants/appcolors.dart';
  // import 'package:scorer/controllers/facil_dashboard_controller.dart';
  // import 'package:scorer/widgets/main_text.dart';
  import 'package:scorer_web/constants/appcolors.dart';
  import 'package:scorer_web/controller/facil_dashboard_controller.dart';
  import 'package:scorer_web/widgets/main_text.dart';

  class FacilDashBoardStackContainer extends StatelessWidget {
    const FacilDashBoardStackContainer({
      super.key, required this.controller,
    
    });

  
    final FacilDashboardController controller;

    @override
    Widget build(BuildContext context) {
      return Obx(()=>Container(
        height: 101.h,
        width: 702.w,
        decoration: BoxDecoration(
          color: AppColors.settingColor,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: controller.selectedIndex.value == 0
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              duration: const Duration(milliseconds: 250),
              child: Container(
                height: 94 .h,
                width: 338 .w,
                margin: EdgeInsets.symmetric(horizontal: 6 .w),
                decoration: BoxDecoration(
                  color: AppColors.forwardColor,
                  borderRadius: BorderRadius.circular(25 .r),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: MainText(
                      onTap: () {
                        controller.changeTab(0);
                      },
                      text:   "Active Sessions",
                      color: controller.selectedIndex.value == 0
                          ? AppColors.whiteColor
                          : AppColors.languageColor,
                      fontSize: 28 .sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: MainText(
                      text:  "Scheduled",
                      fontSize: 28 .sp,
                      color: controller.selectedIndex.value == 0
                          ? AppColors.languageColor
                          : AppColors.whiteColor,
                      onTap: () {
                        controller.changeTab(1);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
    }
  }
