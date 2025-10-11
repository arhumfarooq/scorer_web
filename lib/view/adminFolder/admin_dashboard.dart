


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/admin_active_session.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/admin_schedule_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/bottom_navigation_controller.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/view/adminFolder/game_Screen_Adminside.dart';
import 'package:scorer_web/view/adminFolder/user_managemnet_screen.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';
import 'package:scorer_web/widgets/widget_nav_item.dart';

// // class AdminDashboard extends StatelessWidget {
// //   final BottomNavController controller1 = Get.put(BottomNavController());
// //   final FacilDashboardController controller = Get.put(FacilDashboardController());
// //   AdminDashboard({super.key});

// //   final List<Widget> screens = [
// //     AdminActiveSession(),
// //     AdminScheduleScreen(),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: GradientBackground(
// //         child: SafeArea(
// //           child: Column(
// //             children: [
// //               // ✅ Custom AppBar
// //               CustomAppbar(
// //                 width3: 205.w,
// //                 height3: 61.h,
// //                 borderW: 1.96.w,
// //                 text: "Create New",
// //                 right2: -30.w,
// //                 right: 20.w,
// //                 top: -30.h,
// //                 onTap: () {
// //                   Get.toNamed(RouteName.createNewSessionScreen);
// //                 },
// //               ),

// //               SizedBox(height: 56.h),

// //               // ✅ Top Gradient Welcome Section
// //             Expanded(
// //               child: Row(
// //                 // crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Padding(
// //                       padding: EdgeInsets.only(left: 100.w),
// //                       child: SideNavBar(
// // onTap: () {
// //   if (controller1.selectedIndex==0) {
    
    
// //   }
// // },

// //                       ),
// //                     ),
// //                   Expanded(
// //                     child: Center(
// //                       child: Column(
// //                         children: [
// //                             GradientColor(
// //                           height: 220.h,
// //                           child: Container(
// //                             width: 794.w,
// //                             height: 100.h,
                           
// //                             child: Stack(
// //                               clipBehavior: Clip.none,
// //                               children: [
// //                                 Positioned(
// //                                   top: -140,
// //                                   right: 312.w,
// //                                   left: 312.w,
// //                                   child: CustomStackImage(
// //                                     image:  Appimages.prince2,
// //                                   ),
// //                                 ),
// //                                 Column(
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   children: [
// //                                     Center(
// //                                       child: BoldText(
// //                                         text: "Hello Administrator, Chris!",
// //                                         fontSize: 48.sp,
// //                                         selectionColor: AppColors.blueColor,
// //                                       ),
// //                                     ),
// //                                     Center(
// //                                       child: MainText(
// //                                         fontSize: 22.sp,
// //                                         textAlign: TextAlign.center,
// //                                         text:
// //                                         "Welcome! You have full system access to\nmanage sessions, users, and game content."
// //                                             // "You’ve just entered a company in crisis. Every\ndecision you make could change its future.",
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
                      
// //                         // ✅ Main Content Area
// //                         Expanded(
// //                           child: GradientColor(
// //                             ishow: false,
// //                             child: Container(
// //                               width: 794.w,
                           
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.center,
// //                                 children: [
// //                                   SizedBox(height: 20.h),
// //                                   FacilDashBoardStackContainer(controller: controller),
// //                                   SizedBox(height: 20.h),
                      
// //                                   // ✅ Switchable screens without layout issue
// //                                   Expanded(
// //                                     child: Obx(() => screens[controller.selectedIndex.value]),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 SizedBox(width: 200.w),
// //                 ],
// //               ),
// //             )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// class AdminDashboard extends StatelessWidget {
//   final BottomNavController controller1 = Get.put(BottomNavController());
//   final FacilDashboardController controller = Get.put(FacilDashboardController());
//   AdminDashboard({super.key});

//   final List<Widget> screens = [
//     AdminActiveSession(),
//     AdminScheduleScreen(),
//   ];

//   // 👇 Define different Column layouts for each index
//   List<Widget> getScreenContent(int index) {
//     switch (index) {
//       case 0:
//         return [
//           SizedBox(height: 20.h),
//           FacilDashBoardStackContainer(controller: controller),
//           SizedBox(height: 20.h),
//           // Expanded(child: screens[0]),
//             Expanded(
//                                     child: Obx(() => screens[controller.selectedIndex.value]),
//                                   ),
//         ];
//       case 1:
//         return [
//           SizedBox(height: 20.h),
//           BoldText(
//             text: "Admin Schedule",
//             fontSize: 35.sp,
//             selectionColor: AppColors.blueColor,
//           ),
//           SizedBox(height: 20.h),
//           Expanded(child: screens[1]),
//         ];
//       case 2:
//         return [
//           SizedBox(height: 20.h),
//           BoldText(
//             text: "User Management",
//             fontSize: 35.sp,
//             selectionColor: AppColors.blueColor,
//           ),
//           SizedBox(height: 20.h),
//           Expanded(child: Center(child: Text("Users Screen Coming Soon"))),
//         ];
//       default:
//         return [];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Column(
//             children: [
//               // ✅ AppBar
//               CustomAppbar(
//                 width3: 205.w,
//                 height3: 61.h,
//                 borderW: 1.96.w,
//                 text: "Create New",
//                 right2: -30.w,
//                 right: 20.w,
//                 top: -30.h,
//                 onTap: () {
//                   Get.toNamed(RouteName.createNewSessionScreen);
//                 },
//               ),

//               SizedBox(height: 56.h),

//               // ✅ Main layout
//               Expanded(
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 100.w),
//                       child: SideNavBar(controller: controller1),
//                     ),
//                     Expanded(
//                       child: Center(
//                         child: Column(
//                           children: [
//                             GradientColor(
//                               height: 220.h,
//                               child: Container(
//                                 width: 794.w,
//                                 height: 100.h,
//                                 child: Stack(
//                                   clipBehavior: Clip.none,
//                                   children: [
//                                     Positioned(
//                                       top: -140,
//                                       right: 312.w,
//                                       left: 312.w,
//                                       child: CustomStackImage(
//                                         image: Appimages.prince2,
//                                       ),
//                                     ),
//                                     Column(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Center(
//                                           child: BoldText(
//                                             text: "Hello Administrator, Chris!",
//                                             fontSize: 48.sp,
//                                             selectionColor: AppColors.blueColor,
//                                           ),
//                                         ),
//                                         Center(
//                                           child: MainText(
//                                             fontSize: 22.sp,
//                                             textAlign: TextAlign.center,
//                                             text:
//                                                 "Welcome! You have full system access to\nmanage sessions, users, and game content.",
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),

//                             // ✅ Dynamic content area (switches when SideNavBar changes)
//                             Expanded(
//                               child: GradientColor(
//                                 ishow: false,
//                                 child: Container(
//                                   width: 794.w,
//                                   child: Obx(() => Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: getScreenContent(
//                                             controller1.selectedIndex.value),
//                                       )),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 200.w),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class AdminDashboard extends StatelessWidget {
  final BottomNavController controller1 = Get.put(BottomNavController());
  final FacilDashboardController controller = Get.put(FacilDashboardController());
  AdminDashboard({super.key});

  final List<Widget> screens = [
    AdminActiveSession(),
    AdminScheduleScreen(),
  ];

  // 👇 Ye method har index ke hisab se full column data return karega
  Widget getFullColumn(int index) {
    switch (index) {
      case 0:
        return Column(
          children: [
            GradientColor(
              height: 220.h,
              child: Container(
                width: 794.w,
                height: 100.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(image: Appimages.prince2,text: "Administrator",),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: BoldText(
                            text: "Hello Administrator, Chris!",
                            fontSize: 48.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                        ),
                        Center(
                          child: MainText(
                            fontSize: 22.sp,
                            textAlign: TextAlign.center,
                            text:
                                "Welcome! You have full system access to\nmanage sessions, users, and game content.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GradientColor(
                ishow: false,
                child: Container(
                  width: 794.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.h),
                      FacilDashBoardStackContainer(controller: controller),
                      SizedBox(height: 20.h),
                      Expanded(
                          child: Obx(
                              () => screens[controller.selectedIndex.value])),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );

      case 1:
        return GameScreenAdminside();

      case 2:
        return UserManagemnetScreen();

      default:
        return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              // ✅ AppBar
           Obx(() {

              if (controller1.selectedIndex.value == 0) {
                return CustomAppbar(
                  
                  // pa4ding1: 20.w,
                  width3: 160.w,
                  height3: 61.h,
                  borderW: 1.96.w,
                  text: "Create",
                  right2: -10.w,
                  right: 0.w,
                  top: -30.h,
                  onTap: () {
                    Get.toNamed(RouteName.createNewSessionScreen);
                  },
                );
              }
              // Agar User Management screen hai (index = 2)
              if (controller1.selectedIndex.value == 2) {
                return CustomAppbar(
                  right2: 5.w,
                  height3: 61.h,
                  right: -30.w,
isShow: true,
onTap: () {
  Get.toNamed(RouteName.createNewSessionHeader);
});
              } else {
                // Default AppBar for all other screens
                return CustomAppbar(
                  width3: 205.w,
                  height3: 61.h,
                  borderW: 1.96.w,
                  text: "Create New",
                  right2: -30.w,
                  right: -20.w,
                  top: -30.h,
                  onTap: () {
                    Get.toNamed(RouteName.createNewSessionScreen);
                  },
                );
              }
            }),

              SizedBox(height: 56.h),

              // ✅ Main layout
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: SideNavBar(controller: controller1),
                    ),

                    // ✅ Ye poora center column ab reactive hoga
                    Expanded(
                      child: Center(
                        child: Obx(
                          () => getFullColumn(controller1.selectedIndex.value),
                        ),
                      ),
                    ),

                    SizedBox(width: 200.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
