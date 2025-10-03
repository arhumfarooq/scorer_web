
//   import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/controller/bottom_navigation_controller.dart';
// import 'package:scorer_web/controller/facil_dashboard_controller.dart';

// Widget _buildNavItem(
//     final BottomNavController controller = Get.put(BottomNavController());

//     BuildContext context, {
//     required String icon,
//     required String label,
//     required int index,
//     required double scaleFactor,
//   }) {
//     return GestureDetector(
//       onTap: () => controller.changeIndex(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Image.asset(icon, height: 57 * scaleFactor),
//           SizedBox(height: 5 * scaleFactor),
//           CreateContainer(
//             text: label,
//             textColor: controller.selectedIndex.value == index
//                 ? AppColors.forwardColor
//                 : AppColors.createBorderColor,
//             containerColor: controller.selectedIndex.value == index
//                 ? AppColors.selectionColor.withOpacity(0.25)
//                 : AppColors.createColor,
//             borderColor: controller.selectedIndex.value == index
//                 ? AppColors.forwardColor
//                 : AppColors.createBorderColor,
//           ),
//           SizedBox(height: 10 * scaleFactor),
//         ],
//       ),
//     );
//   }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/bottom_navigation_controller.dart';
import 'package:scorer_web/widgets/create_container.dart';

class SideNavBar extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  SideNavBar({super.key});

  final List<Map<String, dynamic>> items = [
    {"icon": Appimages.house1, "label": "Home"},
    {"icon": Appimages.game, "label": "Game"},
    {"icon": Appimages.group, "label": "Users"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          items.length,
          (index) => Obx(
            () => GestureDetector(
              onTap: () => controller.changeIndex(index),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  children: [
                    Image.asset(
                      items[index]["icon"],
                      height: 150.h,
                      width: 200.w,
                    ),
                    SizedBox(height: 10.h),
                    CreateContainer(
                      top: -35.h,
                      arrowW: 37.w,
                      arrowh: 45.h,
                      width: 139.w,
                      height: 68.h,
                      borderW: 2.w,
                      text: items[index]["label"],
                      textColor: controller.selectedIndex.value == index
                          ? AppColors.forwardColor
                          : AppColors.createBorderColor,
                      containerColor: controller.selectedIndex.value == index
                          ? AppColors.selectionColor.withOpacity(0.25)
                          : AppColors.createColor,
                      borderColor: controller.selectedIndex.value == index
                          ? AppColors.forwardColor
                          : AppColors.createBorderColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
