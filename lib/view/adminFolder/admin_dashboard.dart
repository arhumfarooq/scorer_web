
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
// import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
// import 'package:scorer_web/components/facilitator_folder/custom_session_Container.dart';
// import 'package:scorer_web/components/facilitator_folder/custom_time_row.dart';
// import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
// import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
// import 'package:scorer_web/components/facilitator_folder/phase_breakdown_container.dart';
// import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
// import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
// import 'package:scorer_web/components/responsive_fonts.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/controller/facil_dashboard_controller.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/create_container.dart';
// import 'package:scorer_web/widgets/custom_appbar.dart';
// import 'package:scorer_web/widgets/custom_response_container.dart';
// import 'package:scorer_web/widgets/custom_sloder_row.dart';
// import 'package:scorer_web/widgets/custom_stack_image.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/login_button.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/players_containers.dart';
// import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:scorer_web/widgets/widget_nav_item.dart';
// // import 'package:syncfusion_flutter_sliders/sliders.dart';

// class AdminDashboard extends StatelessWidget {
//     final FacilDashboardController controller = Get.put(FacilDashboardController());
 
//      final List<Widget> screens = [
//     ActiveSessionScreen(),
//     ScheduleScreen()
//   ];
//    AdminDashboard({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body  : GradientBackground(
//           child: Column(
//             children: [
//               /// ✅ Fixed Appbar
//               CustomAppbar(
//                 width3: 205.w,
//       height3: 61.h,
//       borderW: 1.96.w,
//       text: "Create New",
//       right2: -30.w,
//       right: 20.w,
//       top: -30.h,
      
//               ),
//               SizedBox(height: 56.h),
      
//            Expanded(
//              child: Row(
//               children: [
//                 Padding(
//                   padding:  EdgeInsets.only(left: 100.w),
//                   child: SideNavBar(),
//                 ),
//                 Expanded(
//                   child: Column(
//                     children: [
//                          /// ✅ Fixed Top Container
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40.r),
//                         topRight: Radius.circular(40.r)
//                       ),
//                     color: AppColors.whiteColor,
                  
//                     ),
//                     // color: AppColors.whiteColor,
//                     width: 794.w,
//                     height: 235.h,
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Positioned(
//                           top: 50.h,
//                           left: -40.w,
//                           child: ForwardButtonContainer(
//                             imageH: 20.h,
//                             imageW: 23.5.w,
//                             height1: 90.h,
//                             height2: 65.h,
//                             width1: 90.w,
//                             width2: 65.w,
//                             image: Appimages.arrowback,
//                           ),
//                         ),
//                         Positioned(
//                           top: -140,
//                           right: 312.w,
//                           left: 312.w,
//                           child: CustomStackImage(
//                             image: Appimages.prince2,
//                             text: "Administrator",
//                           ),
//                         ),
//                      Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                            Center(
//                           child: BoldText(
//                             text: "Hello Administrator, Chris!",
//                             fontSize: 48.sp,
//                             selectionColor: AppColors.blueColor,
//                           ),
//                         ),
//                          MainText(text: "Welcome! You have full system access to\nmanage sessions, users, and game content.",fontSize: 22.sp,)
                  
//                       ],
//                      )
//                       ],
//                     ),
//                   ),
                  
//                   /// ✅ Scrollable Area
//                   Expanded(
//                     child: Container(
//                       width: 794.w,
//                       decoration: BoxDecoration(
//                         color: AppColors.whiteColor,
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(40.r),
//                           bottomRight: Radius.circular(40.r)
//                         ),
//                       ),
//                       child: ScrollConfiguration(
//                           behavior: ScrollConfiguration.of(context).copyWith(
//                       scrollbars: false, // ✅ ye side wali scrollbar hatayega
//                     ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                              FacilDashBoardStackContainer(controller: controller),
//                         SizedBox(height: 20.h),
//                                        Obx(() => screens[controller.selectedIndex.value]),
                        
                             
                        
                         
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                     ],
//                   ),
//                 ),
//                 // Text("")
//                 Container(
//                   width: 200.w,
//                 )
//               ],
//              ),
//            )
//             ],
//           ),
//         ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:get/get.dart';
// // import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
// // import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
// // import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
// // import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer_web/constants/appimages.dart';
// // import 'package:scorer_web/controller/facil_dashboard_controller.dart';
// // import 'package:scorer_web/view/gradient_background.dart';
// // import 'package:scorer_web/widgets/bold_text.dart';
// // import 'package:scorer_web/widgets/custom_appbar.dart';
// // import 'package:scorer_web/widgets/custom_stack_image.dart';
// // import 'package:scorer_web/widgets/forward_button_container.dart';
// // import 'package:scorer_web/widgets/main_text.dart';
// // import 'package:scorer_web/widgets/widget_nav_item.dart';

// // class AdminDashboard extends StatelessWidget {
// //   final FacilDashboardController controller = Get.put(FacilDashboardController());
// //   final List<Widget> screens = [
// //     ActiveSessionScreen(),
// //     ScheduleScreen(),
// //   ];

// //   AdminDashboard({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: GradientBackground(
// //         child: Column(
// //           children: [
// //             /// ✅ Top AppBar
// //             CustomAppbar(
// //               width3: 205.w,
// //               height3: 61.h,
// //               borderW: 1.96.w,
// //               text: "Create New",
// //               right2: -30.w,
// //               right: 20.w,
// //               top: -30.h,
// //             ),

// //             SizedBox(height: 56.h),

// //             /// ✅ Main Layout Row
// //             Expanded(
// //               child: Row(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   /// ✅ Sidebar
// //                   // Padding(
// //                   //   padding: EdgeInsets.only(left: 100.w),
// //                   //   child: SideNavBar(),
// //                   // ),

// //                   /// ✅ Main Content Area
// //                   Expanded(
// //                     child: Column(
// //                       children: [
// //                         /// ✅ Top Section (Header)
// //                         Container(
// //                           width: 794.w,
// //                           height: 235.h,
// //                           decoration: BoxDecoration(
// //                             color: AppColors.whiteColor,
// //                             borderRadius: BorderRadius.only(
// //                               topLeft: Radius.circular(40.r),
// //                               topRight: Radius.circular(40.r),
// //                             ),
// //                           ),
// //                           child: Stack(
// //                             clipBehavior: Clip.none,
// //                             children: [
// //                               Positioned(
// //                                 top: 50.h,
// //                                 left: -40.w,
// //                                 child: ForwardButtonContainer(
// //                                   imageH: 20.h,
// //                                   imageW: 23.5.w,
// //                                   height1: 90.h,
// //                                   height2: 65.h,
// //                                   width1: 90.w,
// //                                   width2: 65.w,
// //                                   image: Appimages.arrowback,
// //                                 ),
// //                               ),
// //                               Positioned(
// //                                 top: -140,
// //                                 right: 312.w,
// //                                 left: 312.w,
// //                                 child: CustomStackImage(
// //                                   image: Appimages.prince2,
// //                                   text: "Administrator",
// //                                 ),
// //                               ),
// //                               Column(
// //                                 mainAxisAlignment: MainAxisAlignment.center,
// //                                 children: [
// //                                   Center(
// //                                     child: BoldText(
// //                                       text: "Hello Administrator, Chris!",
// //                                       fontSize: 48.sp,
// //                                       selectionColor: AppColors.blueColor,
// //                                     ),
// //                                   ),
// //                                   MainText(
// //                                     text:
// //                                         "Welcome! You have full system access to\nmanage sessions, users, and game content.",
// //                                     fontSize: 22.sp,
// //                                   ),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),

// //                         /// ✅ Scrollable content area
// //                         Expanded(
// //                           child: Container(
// //                             width: 794.w,
// //                             decoration: BoxDecoration(
// //                               color: AppColors.whiteColor,
// //                               borderRadius: BorderRadius.only(
// //                                 bottomLeft: Radius.circular(40.r),
// //                                 bottomRight: Radius.circular(40.r),
// //                               ),
// //                             ),
// //                             child: ScrollConfiguration(
// //                               behavior: ScrollConfiguration.of(context).copyWith(
// //                                 scrollbars: false,
// //                               ),
// //                               child: SingleChildScrollView(
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.center,
// //                                   children: [
// //                                     SizedBox(height: 20.h),
// //                                     FacilDashBoardStackContainer(controller: controller),
// //                                     SizedBox(height: 20.h),

// //                                     /// ✅ Switchable screen area
// //                                     Obx(() => screens[controller.selectedIndex.value]),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),

// //                   /// ✅ Right empty space
// //                   SizedBox(width: 200.w),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }



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
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
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

class AdminDashboard extends StatelessWidget {
  final FacilDashboardController controller = Get.put(FacilDashboardController());
  AdminDashboard({super.key});

  final List<Widget> screens = [
    AdminActiveSession(),
    AdminScheduleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              // ✅ Custom AppBar
              CustomAppbar(
                width3: 205.w,
                height3: 61.h,
                borderW: 1.96.w,
                text: "Create New",
                right2: -30.w,
                right: 20.w,
                top: -30.h,
                onTap: () {
                  Get.toNamed(RouteName.createNewSessionScreen);
                },
              ),

              SizedBox(height: 56.h),

              // ✅ Top Gradient Welcome Section
            Expanded(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: SideNavBar(),
                    ),
                  Expanded(
                    child: Center(
                      child: Column(
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
                                  child: CustomStackImage(
                                    image:  Appimages.prince2,
                                  ),
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
                                        "Welcome! You have full system access to\nmanage sessions, users, and game content."
                                            // "You’ve just entered a company in crisis. Every\ndecision you make could change its future.",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      
                        // ✅ Main Content Area
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
                      
                                  // ✅ Switchable screens without layout issue
                                  Expanded(
                                    child: Obx(() => screens[controller.selectedIndex.value]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(width: 200.w),
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
