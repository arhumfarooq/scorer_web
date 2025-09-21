
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
    super.key,
    required this.heightScaleFactor,
    required this.widthScaleFactor,
    required this.controller,
  });

  final double heightScaleFactor;
  final double widthScaleFactor;
  final FacilDashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      width: 702.w,
      decoration: BoxDecoration(
        color: AppColors.settingColor,
        borderRadius: BorderRadius.circular(12 * widthScaleFactor),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: controller.selectedIndex.value == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            duration: const Duration(milliseconds: 250),
            child: Container(
              height: 94 * heightScaleFactor,
              width: 338 * widthScaleFactor,
              margin: EdgeInsets.symmetric(horizontal: 6 * widthScaleFactor),
              decoration: BoxDecoration(
                color: AppColors.forwardColor,
                borderRadius: BorderRadius.circular(12 * widthScaleFactor),
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
                    text:   "active_sessions".tr,
                    color: controller.selectedIndex.value == 0
                        ? AppColors.whiteColor
                        : AppColors.languageColor,
                    fontSize: 14 * heightScaleFactor,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: MainText(
                    text:  "scheduled".tr,
                    fontSize: 14 * heightScaleFactor,
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
    );
  }
}
