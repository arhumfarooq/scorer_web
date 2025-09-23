// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
// // // // import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
// // // // import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
// // // // import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
// // // // import 'package:scorer_web/constants/appcolors.dart';
// // // // import 'package:scorer_web/constants/appimages.dart';
// // // // import 'package:scorer_web/controller/over_view_controller.dart';
// // // // import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
// // // // import 'package:scorer_web/view/gradient_background.dart';
// // // // import 'package:scorer_web/widgets/bold_text.dart';
// // // // import 'package:scorer_web/widgets/custom_appbar.dart';
// // // // import 'package:scorer_web/widgets/custom_stack_image.dart';
// // // // import 'package:scorer_web/widgets/forward_button_container.dart';
// // // // import 'package:scorer_web/widgets/main_text.dart';
// // // // import 'package:scorer_web/widgets/useable_container.dart';

// // // // class OverViewOptionScreen extends StatelessWidget {
// // // //   final controller = Get.put(OverviewController());

// // // //   OverViewOptionScreen({super.key});
// // // //    final List<String> tabs = [
// // // //   "tab_overview".tr,
// // // //   "tab_phases".tr,
// // // //   "tab_players".tr,
// // // //   "tab_leaderboard".tr,
// // // // ];
// // // // final List<Widget> screens = [
// // // //     OverviewScreen(),
// // // //     PhasesScreen(),
// // // //     PlayersScreen(),
// // // //     LeaderBoardScreen()
// // // //   ];

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final Size screenSize = MediaQuery.of(context).size;
// // // //      final double heightScaleFactor = screenSize.height / 1080;
// // // //     final double widthScaleFactor = screenSize.width / 1920;

// // // //     return Scaffold(body:GradientBackground(child: SingleChildScrollView(
// // // //       child: Column(
// // // //         children: [
// // // //           CustomAppbar(ishow: true,),
// // // //            SizedBox(height: 56.h,),
          
// // // //            Container(
// // // //             height: 1050.h,
// // // //             width: 794.w,
// // // //             decoration: BoxDecoration(
// // // //               color: AppColors.whiteColor,
// // // //               borderRadius: BorderRadius.only(
// // // //           topLeft: Radius.circular(40.r),
// // // //           topRight: Radius.circular(40.r),
// // // //               ),
// // // //             ),
// // // //             child: Stack(
// // // //               clipBehavior: Clip.none,
// // // //               children: [

// // // //                 Positioned(
// // // //                   top: 57.h,
// // // //                   left: -30.w,
// // // //                   child: ForwardButtonContainer(image: Appimages.arrowback,)),
// // // //           Positioned(
// // // //             top: -140,
// // // //             right: 312.w,
// // // //             left: 312.w,
// // // //             child: CustomStackImage(),
// // // //           ),
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
// // // //             child: Column(
// // // //               crossAxisAlignment: CrossAxisAlignment.center,
// // // //               children: [
// // // //                 SizedBox(height: 48.h),
// // // //                 Center(
// // // //                   child: BoldText(
// // // //                     text: "Eranove Odyssey – Team A",
// // // //                     fontSize: 48.sp,
// // // //                     selectionColor: AppColors.blueColor,
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(height: 20.h,),
// // // //                 Row(
// // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                   children: [
// // // //                     UseableContainer(text: "Phase 2",color: AppColors.orangeColor,fontFamily: "abz",),
// // // //                     SizedBox(width: 26.w,),
// // // //                     UseableContainer(text: "Active",fontFamily: "abz",color: AppColors.forwardColor,),
                    
// // // //                   ],
// // // //                 ),
              
// // // //                 SizedBox(height: 45.h),
// // // //             //        Obx(() {
// // // //             //   int tabCount = tabs.length;
            
              
// // // //             //   double containerWidth = screenSize.width - (0 * widthScaleFactor);
            
              
// // // //             //   double tabWidth = containerWidth / tabCount;
            
// // // //             //   return FacilOverViewStackContainer( controller: controller, tabCount: tabCount, tabWidth: tabWidth, tabs: tabs);
// // // //             // }),
// // // //             FacilOverViewStackContainer(controller: controller, tabCount: tabs.length, tabWidth: screenSize.width - (0 * widthScaleFactor)/tabs.length
// // // //           , tabs: tabs),
            
// // // //                 SizedBox(height: 12 * heightScaleFactor),
            
                
// // // //                 // Obx(() => screens[controller.selectedIndex.value]),
           
      
         
                       
                    
// // // //               ],
// // // //             ),
// // // //           ),
// // // //               ],
// // // //             ),
// // // //           ),
          
      
// // // //         ],
// // // //       ),
// // // //     )),);
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // import 'package:get/get.dart';
// // // import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
// // // import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
// // // import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
// // // import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
// // // import 'package:scorer_web/constants/appcolors.dart';
// // // import 'package:scorer_web/constants/appimages.dart';
// // // import 'package:scorer_web/controller/over_view_controller.dart';
// // // import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
// // // import 'package:scorer_web/view/gradient_background.dart';
// // // import 'package:scorer_web/widgets/bold_text.dart';
// // // import 'package:scorer_web/widgets/custom_appbar.dart';
// // // import 'package:scorer_web/widgets/custom_stack_image.dart';
// // // import 'package:scorer_web/widgets/forward_button_container.dart';
// // // import 'package:scorer_web/widgets/useable_container.dart';

// // // class OverViewOptionScreen extends StatelessWidget {
// // //   final controller = Get.put(OverviewController());

// // //   OverViewOptionScreen({super.key});

// // //   final List<String> tabs = [
// // //     "Overview".tr,
// // //     "Phases".tr,
// // //     "Players".tr,
// // //     "Leaderboard".tr,
// // //   ];

// // //   final List<Widget> screens = [
// // //     OverviewScreen(),
// // //     PhasesScreen(),
// // //     PlayersScreen(),
// // //     LeaderBoardScreen(),
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: GradientBackground(
// // //         child: SingleChildScrollView(
// // //           child: Column(
// // //             children: [
// // //               CustomAppbar(ishow: true),
// // //               SizedBox(height: 56.h),
// // //               Container(
// // //                 width: 794.w,
// // //                 decoration: BoxDecoration(
// // //                   color: AppColors.whiteColor,
// // //                   borderRadius: BorderRadius.only(
// // //                     topLeft: Radius.circular(40.r),
// // //                     topRight: Radius.circular(40.r),
// // //                   ),
// // //                 ),
// // //                 child: Stack(
// // //                   clipBehavior: Clip.none,
// // //                   children: [
// // //                     Positioned(
// // //                       top: 57.h,
// // //                       left: -30.w,
// // //                       child: ForwardButtonContainer(image: Appimages.arrowback),
// // //                     ),
// // //                     Positioned(
// // //                       top: -140,
// // //                       right: 312.w,
// // //                       left: 312.w,
// // //                       child: CustomStackImage(),
// // //                     ),
// // //                     Padding(
// // //                       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // //                         children: [
// // //                           SizedBox(height: 48.h),
// // //                           Center(
// // //                             child: BoldText(
// // //                               text: "Eranove Odyssey – Team A",
// // //                               fontSize: 48.sp,
// // //                               selectionColor: AppColors.blueColor,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: 20.h),
// // //                           Row(
// // //                             mainAxisAlignment: MainAxisAlignment.center,
// // //                             children: [
// // //                               UseableContainer(text: "Phase 2", color: AppColors.orangeColor, fontFamily: "abz"),
// // //                               SizedBox(width: 26.w),
// // //                               UseableContainer(text: "Active", fontFamily: "abz", color: AppColors.forwardColor),
// // //                             ],
// // //                           ),
// // //                           SizedBox(height: 45.h),
// // //                           // The `Container` with the green moving part
// // //                           LayoutBuilder(
// // //                             builder: (context, constraints) {
// // //                               double containerWidth = constraints.maxWidth;
// // //                               double tabWidth = containerWidth / tabs.length;
// // //                               List<double> tabWidths = List.filled(tabs.length, tabWidth);

// // //                               return FacilOverViewStackContainer(
// // //                                 controller: controller,
// // //                                 tabs: tabs,
// // //                                 tabPositions: tabWidths,
// // //                               );
// // //                             },
// // //                           ),
// // //                           SizedBox(height: 12.h), // Adjusted from heightScaleFactor
// // //                           // To show the selected screen based on the tab
// // //                           Obx(() => screens[controller.selectedIndex.value]),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:get/get.dart';
// // import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
// // import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
// // import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
// // import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
// // import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer_web/constants/appimages.dart';
// // import 'package:scorer_web/controller/over_view_controller.dart';
// // import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
// // import 'package:scorer_web/view/gradient_background.dart';
// // import 'package:scorer_web/widgets/bold_text.dart';
// // import 'package:scorer_web/widgets/custom_appbar.dart';
// // import 'package:scorer_web/widgets/custom_stack_image.dart';
// // import 'package:scorer_web/widgets/forward_button_container.dart';
// // import 'package:scorer_web/widgets/useable_container.dart';

// // class OverViewOptionScreen extends StatelessWidget {
// //   final controller = Get.put(OverviewController());

// //   OverViewOptionScreen({super.key});

// //   final List<String> tabs = [
// //     "Overview".tr,
// //     "Phases".tr,
// //     "Players".tr,
// //     "Leaderboard".tr,
// //   ];

// //   final List<Widget> screens = [
// //     OverviewScreen(),
// //     PhasesScreen(),
// //     PlayersScreen(),
// //     LeaderBoardScreen(),
// //   ];

// //   /// Function to calculate text width based on style
// //   double _getTextWidth(String text, TextStyle style) {
// //     final TextPainter textPainter = TextPainter(
// //       text: TextSpan(text: text, style: style),
// //       maxLines: 1,
// //       textDirection: TextDirection.ltr,
// //     )..layout(minWidth: 0, maxWidth: double.infinity);
// //     return textPainter.size.width;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: GradientBackground(
// //         child: SingleChildScrollView(
// //           child: Column(
// //             children: [
// //               CustomAppbar(ishow: true),
// //               SizedBox(height: 56.h),
// //               Container(
// //                 width: 794.w,
// //                 decoration: BoxDecoration(
// //                   color: AppColors.whiteColor,
// //                   borderRadius: BorderRadius.only(
// //                     topLeft: Radius.circular(40.r),
// //                     topRight: Radius.circular(40.r),
// //                   ),
// //                 ),
// //                 child: Stack(
// //                   clipBehavior: Clip.none,
// //                   children: [
// //                     Positioned(
// //                       top: 57.h,
// //                       left: -30.w,
// //                       child: ForwardButtonContainer(image: Appimages.arrowback),
// //                     ),
// //                     Positioned(
// //                       top: -140,
// //                       right: 312.w,
// //                       left: 312.w,
// //                       child: CustomStackImage(),
// //                     ),
// //                     Padding(
// //                       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.center,
// //                         children: [
// //                           SizedBox(height: 48.h),
// //                           Center(
// //                             child: BoldText(
// //                               text: "Eranove Odyssey – Team A",
// //                               fontSize: 48.sp,
// //                               selectionColor: AppColors.blueColor,
// //                             ),
// //                           ),
// //                           SizedBox(height: 20.h),
// //                           Row(
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             children: [
// //                               UseableContainer(
// //                                 text: "Phase 2",
// //                                 color: AppColors.orangeColor,
// //                                 fontFamily: "abz",
// //                               ),
// //                               SizedBox(width: 26.w),
// //                               UseableContainer(
// //                                 text: "Active",
// //                                 fontFamily: "abz",
// //                                 color: AppColors.forwardColor,
// //                               ),
// //                             ],
// //                           ),
// //                           SizedBox(height: 45.h),

// //                           /// 🔥 Dynamic Tab Container
// //                           LayoutBuilder(
// //                             builder: (context, constraints) {
// //                               TextStyle style = TextStyle(
// //                                 fontSize: 25.sp,
// //                                 fontWeight: FontWeight.w500,
// //                               );

// //                               // Calculate tab widths based on text size
// //                               List<double> tabWidths = tabs.map((tab) {
// //                                 double textWidth = _getTextWidth(tab, style);
// //                                 return textWidth + 40.w; // add horizontal padding
// //                               }).toList();

// //                               return FacilOverViewStackContainer(
// //                                 controller: controller,
// //                                 tabs: tabs,
// //                                 tabPositions: tabWidths,
// //                               );
// //                             },
// //                           ),

// //                           SizedBox(height: 12.h),

// //                           /// Show selected screen
// //                           Obx(() => screens[controller.selectedIndex.value]),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
// import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
// import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
// import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/controller/over_view_controller.dart';
// import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/custom_appbar.dart';
// import 'package:scorer_web/widgets/custom_stack_image.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/useable_container.dart';

// class OverViewOptionScreen extends StatelessWidget {
//   final controller = Get.put(OverviewController());

//   OverViewOptionScreen({super.key});

//   final List<String> tabs = [
//     "Overview".tr,
//     "Phases".tr,
//     "Players".tr,
//     "Leaderboard".tr,
//   ];

//   final List<Widget> screens = [
//     OverviewScreen(),
//     PhasesScreen(),
//     PlayersScreen(),
//     LeaderBoardScreen(),
//   ];

//   /// Function to calculate text width based on style
//   double _getTextWidth(String text, TextStyle style) {
//     final TextPainter textPainter = TextPainter(
//       text: TextSpan(text: text, style: style),
//       maxLines: 1,
//       textDirection: TextDirection.ltr,
//     )..layout(minWidth: 0, maxWidth: double.infinity);
//     return textPainter.size.width;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               CustomAppbar(ishow: true),
//               SizedBox(height: 56.h),
//               Container(
//                 width: 794.w,
//                 decoration: BoxDecoration(
//                   color: AppColors.whiteColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40.r),
//                     topRight: Radius.circular(40.r),
//                   ),
//                 ),
//                 child: Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     Positioned(
//                       top: 57.h,
//                       left: -30.w,
//                       child: ForwardButtonContainer(image: Appimages.arrowback),
//                     ),
//                     Positioned(
//                       top: -140,
//                       right: 312.w,
//                       left: 312.w,
//                       child: CustomStackImage(),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SizedBox(height: 48.h),
//                           Center(
//                             child: BoldText(
//                               text: "Eranove Odyssey – Team A",
//                               fontSize: 48.sp,
//                               selectionColor: AppColors.blueColor,
//                             ),
//                           ),
//                           SizedBox(height: 20.h),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               UseableContainer(
//                                 text: "Phase 2",
//                                 color: AppColors.orangeColor,
//                                 fontFamily: "abz",
//                               ),
//                               SizedBox(width: 26.w),
//                               UseableContainer(
//                                 text: "Active",
//                                 fontFamily: "abz",
//                                 color: AppColors.forwardColor,
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 45.h),

//                           /// 🔥 Dynamic Tab Container
//                           LayoutBuilder(
//                             builder: (context, constraints) {
//                               TextStyle style = TextStyle(
//                                 fontSize: 25.sp,
//                                 fontWeight: FontWeight.w500,
//                               );

//                               // Calculate tab widths based on text size + padding
//                               List<double> tabWidths = tabs.map((tab) {
//                                 double textWidth = _getTextWidth(tab, style);
//                                 return textWidth + 60.w; // Add horizontal padding for a good look
//                               }).toList();

//                               return FacilOverViewStackContainer(
//                                 controller: controller,
//                                 tabs: tabs, tabWidth: tabWidths.first,
//                                 // tabPositions: tabWidths,
//                               );
//                             },
//                           ),

//                           SizedBox(height: 12.h),

//                           /// Show selected screen
//                           Obx(() => screens[controller.selectedIndex.value]),
//                         ],
//                       ),
//                     ),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/over_view_controller.dart';
import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class OverViewOptionScreen extends StatelessWidget {
  final controller = Get.put(OverviewController());

  OverViewOptionScreen({super.key});

  final List<String> tabs = [
    "Overview".tr,
    "Phases".tr,
    "Players".tr,
    "Leaderboard".tr,
  ];

  final List<Widget> screens = [
    OverviewScreen(),
    PhasesScreen(),
    PlayersScreen(),
    LeaderBoardScreen(),
  ];

  /// Function to calculate text width based on style
  double _getTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(ishow: true),
              SizedBox(height: 56.h),
              Container(
                width: 794.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 57.h,
                      left: -30.w,
                      child: ForwardButtonContainer(image: Appimages.arrowback),
                    ),
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 48.h),
                          Center(
                            child: BoldText(
                              text: "Eranove Odyssey – Team A",
                              fontSize: 48.sp,
                              selectionColor: AppColors.blueColor,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UseableContainer(
                                text: "Phase 2",
                                color: AppColors.orangeColor,
                                fontFamily: "abz",
                              ),
                              SizedBox(width: 26.w),
                              UseableContainer(
                                text: "Active",
                                fontFamily: "abz",
                                color: AppColors.forwardColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 45.h),

                          /// 🔥 Dynamic Tab Container
                        LayoutBuilder(
  builder: (context, constraints) {
    TextStyle style = TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w500,
    );

    // Calculate tab widths dynamically
    List<double> tabWidths = tabs.map((tab) {
      double textWidth = _getTextWidth(tab, style);
      return textWidth + 60.w; // add padding
    }).toList();

    return FacilOverViewStackContainer(
      controller: controller,
      tabs: tabs,
      tabWidths: tabWidths,
    );
  },
),

                          SizedBox(height: 12.h),

                          /// Show selected screen
                          Obx(() => screens[controller.selectedIndex.value]),
                        ],
                      ),
                    ),
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
