
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // import 'package:scorer_web/constants/appcolors.dart';
// // // // import 'package:scorer/constants/appcolors.dart';
// // // // import 'package:scorer/controllers/overview_controller.dart';
// // // import 'package:scorer_web/controller/over_view_controller.dart';

// // // class FacilOverViewStackContainer extends StatelessWidget {
// // //   const FacilOverViewStackContainer({
// // //     super.key,
   
// // //     required this.controller,
// // //     required this.tabCount,
// // //     required this.tabWidth,
// // //     required this.tabs,
// // //   });

 
// // //   final OverviewController controller;
// // //   final int tabCount;
// // //   final double tabWidth;
// // //   final List<String> tabs;

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: EdgeInsets.symmetric(horizontal: 21 .w),
// // //       child: Container(
// // //         height: 103.h,
// // //         width: 731.w,
// // //         decoration: BoxDecoration(
// // //           color: AppColors.settingColor,
// // //           borderRadius: BorderRadius.circular(23.r),
// // //         ),
// // //         child: Stack(
// // //           children: [
                
// // //                 AnimatedAlign(
// // //     alignment: Alignment(
// // //       (controller.selectedIndex.value / (tabCount - 1)) * 2 - 1, 
// // //       0,
// // //     ),
// // //     duration: const Duration(milliseconds: 250),
// // //     curve: Curves.easeInOut,
// // //     child: Container(
// // //       margin: EdgeInsets.symmetric(
// // //         horizontal: 4 .w,
// // //         vertical: 5.5 .h,
// // //       ),
// // //       height: 84.h,
// // //       width: tabWidth - (18 .w),
// // //       decoration: BoxDecoration(
// // //         color: AppColors.forwardColor,
// // //         borderRadius: BorderRadius.circular(12 .r),
// // //       ),
// // //     ),
// // //                 ),
                
                
// // //                 Row(
// // //     children: List.generate(tabCount, (index) {
// // //       return Expanded(
// // //         child: GestureDetector(
// // //           onTap: () => controller.changeTab(index),
// // //           child: Center(
// // //             child:FittedBox(
// // //     fit: BoxFit.scaleDown,
// // //     child: Text(
// // //       tabs[index],
// // //       style: TextStyle(
// // //         fontSize: 13 .sp,
// // //         color: controller.selectedIndex.value == index
// // //                 ? AppColors.whiteColor
// // //                 : AppColors.languageColor,
// // //       ),
// // //     ),
// // //                 )
                
// // //           ),
// // //         ),
// // //       );
// // //     }),
// // //                 ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:get/get.dart';
// // import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer_web/controller/over_view_controller.dart';

// // class FacilOverViewStackContainer extends StatelessWidget {
// //   const FacilOverViewStackContainer({
// //     super.key,
// //     required this.controller,
// //     required this.tabs,
// //     required this.tabPositions,
// //   });

// //   final OverviewController controller;
// //   final List<String> tabs;
// //   final List<double> tabPositions;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Obx(() {
// //       final int selectedIndex = controller.selectedIndex.value;
// //       double selectedLeftPosition = tabPositions.sublist(0, selectedIndex).fold(0.0, (sum, width) => sum + width);
// //       double selectedWidth = tabPositions[selectedIndex];

// //       return Padding(
// //         padding: EdgeInsets.symmetric(horizontal: 21.w),
// //         child: Container(
// //           height: 103.h,
// //           decoration: BoxDecoration(
// //             color: AppColors.settingColor,
// //             borderRadius: BorderRadius.circular(23.r),
// //           ),
// //           child: Stack(
// //             children: [
// //               AnimatedPositioned(
// //                 duration: const Duration(milliseconds: 250),
// //                 curve: Curves.easeInOut,
// //                 left: selectedLeftPosition,
// //                 width: selectedWidth,
// //                 top: 5.5.h,
// //                 bottom: 5.5.h,
// //                 child: Container(
// //                   width: 198.w,
// //                   margin: EdgeInsets.symmetric(horizontal: 4.w),
// //                   decoration: BoxDecoration(
// //                     color: AppColors.forwardColor,
// //                     borderRadius: BorderRadius.circular(12.r),
// //                   ),
// //                 ),
// //               ),
// //               Row(
// //                 children: List.generate(tabs.length, (index) {
// //                   return Expanded(
// //                     child: GestureDetector(
// //                       onTap: () => controller.changeTab(index),
// //                       child: Center(
// //                         child: FittedBox(
// //                           fit: BoxFit.scaleDown,
// //                           child: Text(
// //                             tabs[index],
// //                             style: TextStyle(
// //                               fontSize: 25.sp,
// //                               color: selectedIndex == index
// //                                   ? AppColors.whiteColor
// //                                   : AppColors.languageColor,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   );
// //                 }),
// //               ),
// //             ],
// //           ),
// //         ),
// //       );
// //     });
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/controller/over_view_controller.dart';

// class FacilOverViewStackContainer extends StatelessWidget {
//   const FacilOverViewStackContainer({
//     super.key,
//     required this.controller,
//     required this.tabs,
//     required this.tabPositions,
//   });

//   final OverviewController controller;
//   final List<String> tabs;
//   final List<double> tabPositions;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       final int selectedIndex = controller.selectedIndex.value;
//       double selectedLeftPosition = tabPositions.sublist(0, selectedIndex).fold(0.0, (sum, width) => sum + width);
//       double selectedWidth = tabPositions[selectedIndex];

//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 21.w),
//         child: Container(
//           height: 103.h,
//           decoration: BoxDecoration(
//             color: AppColors.settingColor,
//             borderRadius: BorderRadius.circular(23.r),
//           ),
//           child: Stack(
//             children: [
//               AnimatedPositioned(
//                 duration: const Duration(milliseconds: 250),
//                 curve: Curves.easeInOut,
//                 left: selectedLeftPosition,
//                 width: selectedWidth,
//                 top: 5.5.h,
//                 bottom: 5.5.h,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: 4.w),
//                   decoration: BoxDecoration(
//                     color: AppColors.forwardColor,
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Use spaceEvenly to distribute items
//                 children: List.generate(tabs.length, (index) {
//                   return GestureDetector(
//                     onTap: () => controller.changeTab(index),
//                     child: Center(
//                       child: FittedBox(
//                         fit: BoxFit.scaleDown,
//                         child: Text(
//                           tabs[index],
//                           style: TextStyle(
//                             fontSize: 25.sp,
//                             color: selectedIndex == index
//                                 ? AppColors.whiteColor
//                                 : AppColors.languageColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/over_view_controller.dart';

// class FacilOverViewStackContainer extends StatelessWidget {
//   const FacilOverViewStackContainer({
//     super.key,
//     required this.controller,
//     required this.tabs,
//     required this.tabWidth,
//   });

//   final OverviewController controller;
//   final List<String> tabs;
//   final double tabWidth;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       final int selectedIndex = controller.selectedIndex.value;

//       // Calculate the left position for the green container
//       double leftPosition = selectedIndex * tabWidth;

//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 21.w),
//         child: Container(
//           height: 103.h,
//           decoration: BoxDecoration(
//             color: AppColors.settingColor,
//             borderRadius: BorderRadius.circular(23.r),
//           ),
//           child: Stack(
//             children: [
//               AnimatedPositioned(
//                 duration: const Duration(milliseconds: 250),
//                 curve: Curves.easeInOut,
//                 left: leftPosition,
//                 top: 5.5.h,
//                 bottom: 5.5.h,
//                 // The width of the AnimatedPositioned is the full tab width
//                 width: tabWidth,
//                 child: Container(
//                   // The margin on the child container creates the padding
//                   margin: EdgeInsets.symmetric(horizontal: 4.w),
//                   decoration: BoxDecoration(
//                     color: AppColors.forwardColor,
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                 ),
//               ),
//               Row(
//                 children: List.generate(tabs.length, (index) {
//                   return Expanded(
//                     child: GestureDetector(
//                       onTap: () => controller.changeTab(index),
//                       child: Center(
//                         child: FittedBox(
//                           fit: BoxFit.scaleDown,
//                           child: Text(
//                             tabs[index],
//                             style: TextStyle(
//                               fontSize: 25.sp,
//                               color: selectedIndex == index
//                                   ? AppColors.whiteColor
//                                   : AppColors.languageColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
// class FacilOverViewStackContainer extends StatelessWidget {
//   const FacilOverViewStackContainer({
//     super.key,
//     required this.controller,
//     required this.tabs,
//     required this.tabWidths,
//   });

//   final OverviewController controller;
//   final List<String> tabs;
//   final List<double> tabWidths;

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       final int selectedIndex = controller.selectedIndex.value;

//       // Calculate left position dynamically
//       double leftPosition = tabWidths.sublist(0, selectedIndex).fold(0.0, (sum, w) => sum + w);
//       double selectedWidth = tabWidths[selectedIndex];

//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 21.w),
//         child: Container(
//           height: 103.h,
//           decoration: BoxDecoration(
//             color: AppColors.settingColor,
//             borderRadius: BorderRadius.circular(23.r),
//           ),
//           child: Stack(
//             children: [
//               // Highlight Bar
//               AnimatedPositioned(
//                 duration: const Duration(milliseconds: 250),
//                 curve: Curves.easeInOut,
//                 left: leftPosition,
//                 width: selectedWidth,
//                 top: 5.5.h,
//                 bottom: 5.5.h,
//                 child: Container(
//                   margin: EdgeInsets.symmetric(horizontal: 4.w),
//                   decoration: BoxDecoration(
//                     color: AppColors.forwardColor,
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                 ),
//               ),

//               // Tabs
//               Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(tabs.length, (index) {
//                   return GestureDetector(
//                     onTap: () => controller.changeTab(index),
//                     child: Padding(
//                        padding: EdgeInsets.symmetric(horizontal: 3.w), // 👈 spacing yahan do
//                       child: SizedBox(
//                         width: tabWidths[index],
//                         child: Center(
//                           child: Text(
//                             tabs[index],
//                             style: TextStyle(
//                               fontSize: 25.sp,
//                               color: selectedIndex == index
//                                   ? AppColors.whiteColor
//                                   : AppColors.languageColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

// class FacilOverViewStackContainer extends StatelessWidget {
//   const FacilOverViewStackContainer({
//     super.key,
//     required this.controller,
//     required this.tabs,
//     required this.tabWidths,
//   });

//   final OverviewController controller;
//   final List<String> tabs;
//   final List<double> tabWidths;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return Obx(() {
//           final int selectedIndex = controller.selectedIndex.value;

//           // total width of all tabs
//           double totalTabWidth =
//               tabWidths.fold(0.0, (sum, w) => sum + w);

//           // space between tabs (because of spaceBetween in Row)
//           double space =
//               (constraints.maxWidth - totalTabWidth) / (tabs.length - 1);

//           // calculate left position including spaces
//           double leftPosition = 0;
//           for (int i = 0; i < selectedIndex; i++) {
//             leftPosition += tabWidths[i] + space;
//           }

//           double selectedWidth = tabWidths[selectedIndex];

//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 21.w),
//             child: Container(
//               height: 103.h,
//               decoration: BoxDecoration(
//                 color: AppColors.settingColor,
//                 borderRadius: BorderRadius.circular(23.r),
//               ),
//               child: Stack(
//                 children: [
//                   // Highlight Bar
//                   AnimatedPositioned(
//                     duration: const Duration(milliseconds: 250),
//                     curve: Curves.easeInOut,
//                     left: leftPosition,
//                     width: selectedWidth,
//                     top: 5.5.h,
//                     bottom: 5.5.h,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 4.w),
//                       decoration: BoxDecoration(
//                         color: AppColors.forwardColor,
//                         borderRadius: BorderRadius.circular(12.r),
//                       ),
//                     ),
//                   ),

//                   // Tabs
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: List.generate(tabs.length, (index) {
//                       return GestureDetector(
//                         onTap: () => controller.changeTab(index),
//                         child: SizedBox(
//                           width: tabWidths[index],
//                           child: Center(
//                             child: Text(
//                               tabs[index],
//                               style: TextStyle(
//                                 fontSize: 25.sp,
//                                 color: selectedIndex == index
//                                     ? AppColors.whiteColor
//                                     : AppColors.languageColor,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//       },
//     );
//   }
// }

class FacilOverViewStackContainer extends StatelessWidget {
  const FacilOverViewStackContainer({
    super.key,
    required this.controller,
    required this.tabs,
    required this.tabWidths,
  });

  final OverviewController controller;
  final List<String> tabs;
  final List<double> tabWidths;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Obx(() {
          final int selectedIndex = controller.selectedIndex.value;

          double totalTabWidth =
              tabWidths.fold(0.0, (sum, w) => sum + w);

          // spaceBetween gap calculation
          double space =
              (constraints.maxWidth - totalTabWidth) / (tabs.length - 1);

          // calculate startX for selected tab
          double startX = 0;
          for (int i = 0; i < selectedIndex; i++) {
            startX += tabWidths[i] + space;
          }

          double selectedWidth = tabWidths[selectedIndex];

          // 🎯 Center align highlight bar under text
          double leftPosition =
              startX + (selectedWidth / 2) - (selectedWidth / 2);

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Container(
              height: 103.h,
              decoration: BoxDecoration(
                color: AppColors.settingColor,
                borderRadius: BorderRadius.circular(23.r),
              ),
              child: Stack(
                children: [
                  // Highlight Bar
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                    left: leftPosition,
                    width: selectedWidth,
                    top: 5.5.h,
                    bottom: 5.5.h,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                        color: AppColors.forwardColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),

                  // Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(tabs.length, (index) {
                      return GestureDetector(
                        onTap: () => controller.changeTab(index),
                        child: SizedBox(
                          width: tabWidths[index],
                          child: Center(
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: selectedIndex == index
                                    ? AppColors.whiteColor
                                    : AppColors.languageColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
