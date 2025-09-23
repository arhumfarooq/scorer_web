
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/over_view_controller.dart';

class FacilOverViewStackContainer extends StatelessWidget {
  const FacilOverViewStackContainer({
    super.key,
    required this.controller,
    required this.tabs,
  });

  final OverviewController controller;
  final List<String> tabs;

  double _getTabWidth(int index) {
    switch (index) {
      // case 0: // Overview
      //   return 170.w;
      // case 1: // Phases
      // case 2: // Players
      //   return 155.w;
      // case 3: // Leaderboard
      //   return 200.w;
      // default:
      //   return 180.w;
         case 0:
        return 170.w; // Overview
      case 1:
        return 150.w; // Phases
      case 2:
        return 145.w; // Players
      case 3:
        return 190.w; // Leaderboard
      default:
        return 160.w;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final int selectedIndex = controller.selectedIndex.value;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Container(
          height: 103.h,
          decoration: BoxDecoration(
            color: AppColors.settingColor,
            borderRadius: BorderRadius.circular(23.r),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final double totalWidth = constraints.maxWidth;
              final double spacing = (totalWidth -
                      (_getTabWidth(0) +
                          _getTabWidth(1) +
                          _getTabWidth(2) +
                          _getTabWidth(3))) /
                  (tabs.length - 1);

              // Calculate left position based on index
              double leftPosition = 0;
              for (int i = 0; i < selectedIndex; i++) {
                leftPosition += _getTabWidth(i) + spacing;
              }

              return Stack(
                children: [
                  /// Highlight bar
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    left: leftPosition,
                    width: _getTabWidth(selectedIndex),
                    top: 5.5.h,
                    bottom: 5.5.h,
                    child: Container(
                        margin: EdgeInsets.symmetric(   // 👈 yahan se gap milega
      horizontal: 6.w,  // dono side se space
      vertical: 8.h,    // upar aur neeche se space
    ),
                      decoration: BoxDecoration(
                        color: AppColors.forwardColor,
                        borderRadius: BorderRadius.circular(23.r),
                      ),
                    ),
                  ),

                  /// Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(tabs.length, (index) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => controller.changeTab(index),
                          child: SizedBox(
                            width: _getTabWidth(index),
                            child: Center(
                              child: Text(
                                tabs[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w500,
                                  color: selectedIndex == index
                                      ? AppColors.whiteColor
                                      : AppColors.languageColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              );
            },
          ),
        ),
      );
    });
  }
}
