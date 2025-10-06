
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/bottom_navigation_controller.dart';
import 'package:scorer_web/view/adminFolder/admin_dashboard.dart';
import 'package:scorer_web/view/adminFolder/game_Screen_Adminside.dart';
import 'package:scorer_web/view/adminFolder/user_managemnet_screen.dart';
import 'package:scorer_web/widgets/create_container.dart';

class SideNavBar extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  SideNavBar({super.key});

  final List<Map<String, dynamic>> items = [
    {"icon": Appimages.house1, "label": "Home"},
    {"icon": Appimages.game, "label": "Game"},
    {"icon": Appimages.group, "label": "Users"},
  ];

  //  final List<Widget> screens = [
  //   AdminDashboard(),
  //   GameScreenAdminside(),
  //   UserManagemnetScreen(),
  // ];

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
                      fontsize2: 30.sp,
                      top: -35.h,
                      arrowW: 37.w,
                      arrowh: 45.h,
                      width: 140.w,
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
          //             Expanded(
          //   child: Obx(() => screens[controller.selectedIndex.value]),
          // ),
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


// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:get/get.dart';
// // import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer_web/constants/appimages.dart';
// // import 'package:scorer_web/controller/bottom_navigation_controller.dart';
// // import 'package:scorer_web/view/adminFolder/admin_dashboard.dart';
// // import 'package:scorer_web/view/adminFolder/game_Screen_Adminside.dart';
// // import 'package:scorer_web/view/adminFolder/user_managemnet_screen.dart';
// // import 'package:scorer_web/view/gradient_background.dart';
// // import 'package:scorer_web/widgets/create_container.dart';


// // /// ✅ Main Nav + Screens
// // class SideNavBar extends StatelessWidget {
// //   final BottomNavController controller = Get.put(BottomNavController());

// //   SideNavBar({super.key});

// //   final List<Map<String, dynamic>> items = [
// //     {"icon": Appimages.house1, "label": "Dashboard"},
// //     {"icon": Appimages.game, "label": "Active Sessions"},
// //     {"icon": Appimages.group, "label": "Schedule"},
// //   ];

// //   /// ✅ Screens list
// //   final List<Widget> screens = [
// //     AdminDashboard(),
// //     GameScreenAdminside(),
// //     UserManagemnetScreen(),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
      
// //       body: Row(
// //         children: [
// //           /// LEFT SIDE NAV
// //           Container(
// //             width: 300.w,
// //             color: Colors.transparent,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: List.generate(
// //                 items.length,
// //                 (index) => Obx(
// //                   () => GestureDetector(
// //                     onTap: () => controller.changeIndex(index),
// //                     child: Padding(
// //                       padding: EdgeInsets.symmetric(vertical: 20.h),
// //                       child: Column(
// //                         children: [
// //                           Image.asset(
// //                             items[index]["icon"],
// //                             height: 100.h,
// //                             width: 100.w,
// //                           ),
// //                           SizedBox(height: 10.h),
// //                           CreateContainer(
// //                             top: -20.h,
// //                             arrowW: 37.w,
// //                             arrowh: 45.h,
// //                             width: 139.w,
// //                             height: 68.h,
// //                             borderW: 2.w,
// //                             text: items[index]["label"],
// //                             textColor: controller.selectedIndex.value == index
// //                                 ? AppColors.forwardColor
// //                                 : AppColors.createBorderColor,
// //                             containerColor:
// //                                 controller.selectedIndex.value == index
// //                                     ? AppColors.selectionColor.withOpacity(0.25)
// //                                     : AppColors.createColor,
// //                             borderColor: controller.selectedIndex.value == index
// //                                 ? AppColors.forwardColor
// //                                 : AppColors.createBorderColor,
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),

// //           /// RIGHT SIDE SCREENS
// //           Expanded(
// //             child: Obx(() => screens[controller.selectedIndex.value]),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// class SideNavBar extends StatelessWidget {
//   // final BottomNavController controller = Get.put(BottomNavController());

//   SideNavBar({super.key});

//   final List<Map<String, dynamic>> items = [
//     {"icon": Appimages.house1, "label": "Home"},
//     {"icon": Appimages.game, "label": "Game"},
//     {"icon": Appimages.group, "label": "Users"},
//   ];

//   final List<Widget> screens = [
//     AdminDashboard(),
//     GameScreenAdminside(),
//     UserManagemnetScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         /// Side Navigation
//         Container(
//           width: 200.w,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               useable(image: Appimages.house1, text: 'Home',onTap: () {
//                 Get.toNamed(RouteName.adminDashboard);
//               },),
//               SizedBox(height: 13,),
//               useable(image: Appimages.game, text: 'Game',onTap: () {
//                 Get.toNamed(RouteName.gameScreenAdminSide);
//               },),
//               SizedBox(height: 13,),
//               useable(image: Appimages.group, text: "Users")

//             ]
//           )
//         ),

//         /// Main Screen Area
//         // Obx(() => screens[controller.selectedIndex.value]),
//       ],
//     );
//   }
// }

// class useable extends StatelessWidget {
//   final VoidCallback?onTap;
//   final String image;
//   final String text;
//   final BottomNavController controller = Get.put(BottomNavController());

//    useable({super.key, required this.image, required this.text, this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//                 () => GestureDetector(
//                 onTap: onTap,
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(vertical: 20.h),
//                     child: Column(
//                       children: [
//                        Image.asset(
//                        image,
//                           height: 150.h,
//                           width: 200.w,
//                         ),
//                         // SizedBox(height: 10.h),
//                         CreateContainer(
//                           fontsize2: 30.sp,
//                           top: -40.h,
//                           arrowW: 37.w,
//                           arrowh: 45.h,
//                           width: 140.w,
//                           height: 68.h,
//                           borderW: 2.w,
//                           text: text,
//                           textColor: controller.selectedIndex.value == 0
//                               ? AppColors.forwardColor
//                               : AppColors.createBorderColor,
//                           containerColor: controller.selectedIndex.value == 0
//                               ? AppColors.selectionColor.withOpacity(0.25)
//                               : AppColors.createColor,
//                           borderColor: controller.selectedIndex.value == 0
//                               ? AppColors.forwardColor
//                               : AppColors.createBorderColor,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//   }
// }
