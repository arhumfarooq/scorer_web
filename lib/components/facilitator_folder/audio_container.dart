











































































































                               










// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // import 'package:flutter_svg/svg.dart';
// // // import 'package:get/get.dart';

// // // import 'package:scorer_web/constants/appcolors.dart';
// // // import 'package:scorer_web/constants/appimages.dart';
// // // import 'package:scorer_web/widgets/bold_text.dart';
// // // import 'package:scorer_web/widgets/main_text.dart';

// // // class AudioContainer extends StatefulWidget {
// // //    bool isPlaying = false;
// // //   AudioContainer({super.key});

// // //   @override
// // //   State<AudioContainer> createState() => _AudioContainerState();
// // //     void _togglePlayPause() {
// // //     setState(() {
// // //       isPlaying = !isPlaying;
// // //     });
// // //     if (isPlaying) {
// // //       _startAnimation();
// // //     }
// // //   }
// // // }

// // // class _AudioContainerState extends State<AudioContainer> {
// // //   @override
// // //   Widget build(BuildContext context) {
    
    
    
  

// // //     return Container(
// // //       height: 200.h,
// // //       width: double.infinity,
// // //       decoration: BoxDecoration(
// // //         borderRadius: BorderRadius.circular(26.r),
// // //         border: Border.all(color: AppColors.greyColor, width: 1.7.w),
// // //       ),
// // //       child: Padding(
// // //         padding: EdgeInsets.symmetric(horizontal: 17 .w),
// // //         child: Column(
// // //           children: [
// // //             SizedBox(height: 20 .h),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //               children: [
// // //                 BoldText(
// // //                  text: "audio_response".tr,
// // //                   fontSize: 16 .sp,
// // //                   selectionColor: AppColors.blueColor,
// // //                 ),
// // //                 SizedBox(height: 25 .h),
// // //                 Row(
// // //                   children: [
// // //                     Image.asset(
// // //                       Appimages.timeout2,
// // //                       height: 23.h,
// // //                       width: 23.w,
// // //                     ),
// // //                     MainText(
// // //                       text: "2 min read",
// // //                       fontSize: 14 .sp,
// // //                       color: AppColors.teamColor,
// // //                     )
// // //                   ],
// // //                 )
// // //               ],
// // //             ),
// // //             SizedBox(height: 10.h,),
// // //             Container(
// // //               width: double.infinity,
// // //               // width: 300 .w,
// // //               height: 52 .h,
// // //               decoration: BoxDecoration(
// // //                 color: AppColors.forwardColor.withOpacity(0.2),
// // //                 borderRadius: BorderRadius.circular(9 .r),
// // //               ),
// // //               child: Padding(
// // //                 padding: EdgeInsets.only(
// // //                   // left: ,
// // //                   // right: 11 * scaleWidth,
// // //                   bottom: 6 .h,
// // //                   top: 9 .h,
// // //                 ),
// // //                 child: Row(
// // //                   children: [
// // //                     SizedBox(
// // //                        width: 400,

// // //                       child: SvgPicture.asset(
// // //                         Appimages.lines,
// // //                         height: 42.h,
// // //                       ),
// // //                     ),
// // //                     SizedBox(
// // //                        width: 400,
// // //                       child: SvgPicture.asset(
// // //                         Appimages.lines2,
// // //                         // height: 400.h,
// // //                         // width: 400,
// // //                       ),
// // //                     ),
// // //                     Expanded(
// // //                       child: SvgPicture.asset(
// // //                         Appimages.lines2,
// // //                         height: 42.h,
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //             SizedBox(height: 20 .h),
// // //             Row(
// // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //               children: [
// // //                 InkWell(
// // //                   onTap: () {
// // //                     _togglePlayPause,
// // //                   },
// // //                   child: Container(
// // //                     height: 31 .h,
// // //                     width: 31 .w,
// // //                     decoration: BoxDecoration(
// // //                       color: AppColors.forwardColor,
// // //                       shape: BoxShape.circle,
// // //                     ),
// // //                     child: Icon(
// // //                               isPlaying ? Icons.pause_circle : Icons.play_circle,

// // //                       color: AppColors.whiteColor,
// // //                       size: 20 .sp, 
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Row(
// // //                   children: [
// // //                     MainText(
// // //                       text: "1:45",
// // //                       color: AppColors.teamColor,
// // //                       fontSize: 14 .sp,
// // //                     ),
// // //                     SizedBox(width: 6 .w),
// // //                     Row(
// // //                       children: [
// // //                         Container(
// // //                           width: 60.w,
// // //                           height: 3 .h,
// // //                           decoration: BoxDecoration(
// // //                             color: AppColors.forwardColor,
// // //                             borderRadius: BorderRadius.only(
// // //                               bottomLeft: Radius.circular(4 .r),
// // //                               topLeft: Radius.circular(4 .r),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                         Container(
// // //                           width: 42 .w,
// // //                           height: 3 .h,
// // //                           decoration: BoxDecoration(
// // //                             color: AppColors.teamColor,
// // //                             borderRadius: BorderRadius.only(
// // //                               bottomRight: Radius.circular(4 .r),
// // //                               topRight: Radius.circular(4 .r),
// // //                             ),
// // //                           ),
// // //                         )
// // //                       ],
// // //                     ),
// // //                     SizedBox(width: 6.w),
// // //                     MainText(
// // //                       text: "1:45",
// // //                       color: AppColors.teamColor,
// // //                       fontSize: 14 .sp,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ],
// // //             )
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:get/get.dart';

// // import 'package:scorer_web/constants/appcolors.dart';
// // import 'package:scorer_web/constants/appimages.dart';
// // import 'package:scorer_web/widgets/bold_text.dart';
// // import 'package:scorer_web/widgets/main_text.dart';

// // class AudioContainer extends StatefulWidget {
// //   const AudioContainer({super.key});

// //   @override
// //   State<AudioContainer> createState() => _AudioContainerState();
// // }

// // class _AudioContainerState extends State<AudioContainer> {
// //   bool isPlaying = false;

// //   void _togglePlayPause() {
// //     setState(() {
// //       isPlaying = !isPlaying;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       height: 200.h,
// //       width: double.infinity,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(26.r),
// //         border: Border.all(color: AppColors.greyColor, width: 1.7.w),
// //       ),
// //       child: Padding(
// //         padding: EdgeInsets.symmetric(horizontal: 17.w),
// //         child: Column(
// //           children: [
// //             SizedBox(height: 20.h),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 BoldText(
// //                   text: "audio_response".tr,
// //                   fontSize: 16.sp,
// //                   selectionColor: AppColors.blueColor,
// //                 ),
// //                 SizedBox(height: 25.h),
// //                 Row(
// //                   children: [
// //                     Image.asset(
// //                       Appimages.timeout2,
// //                       height: 23.h,
// //                       width: 23.w,
// //                     ),
// //                     MainText(
// //                       text: "2 min read",
// //                       fontSize: 14.sp,
// //                       color: AppColors.teamColor,
// //                     )
// //                   ],
// //                 )
// //               ],
// //             ),
// //             SizedBox(height: 10.h),
// //             Container(
// //               width: double.infinity,
// //               height: 52.h,
// //               decoration: BoxDecoration(
// //                 color: AppColors.forwardColor.withOpacity(0.2),
// //                 borderRadius: BorderRadius.circular(9.r),
// //               ),
// //               child: Padding(
// //                 padding: EdgeInsets.only(bottom: 6.h, top: 9.h),
// //                 child: Row(
// //                   children: [
// //                     SizedBox(
// //                       width: 400,
// //                       child: SvgPicture.asset(
// //                         Appimages.lines,
// //                         height: 42.h,
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       width: 400,
// //                       child: SvgPicture.asset(
// //                         Appimages.lines2,
// //                       ),
// //                     ),
// //                     Expanded(
// //                       child: SvgPicture.asset(
// //                         Appimages.lines2,
// //                         height: 42.h,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             SizedBox(height: 20.h),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 InkWell(
// //                   onTap: _togglePlayPause, // ✅ function call
// //                   child: Container(
// //                     height: 31.h,
// //                     width: 31.w,
// //                     decoration: BoxDecoration(
// //                       color: AppColors.forwardColor,
// //                       shape: BoxShape.circle,
// //                     ),
// //                     child: Icon(
// //                       isPlaying ? Icons.pause : Icons.play_arrow, // ✅ icon change
// //                       color: AppColors.whiteColor,
// //                       size: 20.sp,
// //                     ),
// //                   ),
// //                 ),
// //                 Row(
// //                   children: [
// //                     MainText(
// //                       text: "1:45",
// //                       color: AppColors.teamColor,
// //                       fontSize: 14.sp,
// //                     ),
// //                     SizedBox(width: 6.w),
// //                     Row(
// //                       children: [
// //                         Container(
// //                           width: 60.w,
// //                           height: 3.h,
// //                           decoration: BoxDecoration(
// //                             color: AppColors.forwardColor,
// //                             borderRadius: BorderRadius.only(
// //                               bottomLeft: Radius.circular(4.r),
// //                               topLeft: Radius.circular(4.r),
// //                             ),
// //                           ),
// //                         ),
// //                         Container(
// //                           width: 42.w,
// //                           height: 3.h,
// //                           decoration: BoxDecoration(
// //                             color: AppColors.teamColor,
// //                             borderRadius: BorderRadius.only(
// //                               bottomRight: Radius.circular(4.r),
// //                               topRight: Radius.circular(4.r),
// //                             ),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                     SizedBox(width: 6.w),
// //                     MainText(
// //                       text: "1:45",
// //                       color: AppColors.teamColor,
// //                       fontSize: 14.sp,
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/main_text.dart';

// class AudioContainer extends StatefulWidget {
//   const AudioContainer({super.key});

//   @override
//   State<AudioContainer> createState() => _AudioContainerState();
// }

// class _AudioContainerState extends State<AudioContainer> {
//   final Random _random = Random();
//   bool isPlaying = false;

//   // Grey bars ki fixed height
//   List<int> baseBars = [
//     30, 20, 35, 40, 55, 35, 60, 45, 30, 20, 50, 70,
//     40, 25, 30, 45, 65, 55, 35, 25, 40, 50,
//     30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
//     30, 20, 35, 40, 55, 35, 60, 45, 30, 20, 50, 70,
//     40, 25, 30, 45, 65, 55, 35, 25, 40, 50,
//     30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
//     30, 20,35, 25, 45, 20,
//   ];

//   List<int> greenBars = [];

//   @override
//   void initState() {
//     super.initState();
//     greenBars = List.generate(baseBars.length, (i) => 5); // start small
//   }

//   void _togglePlayPause() {
//     setState(() {
//       isPlaying = !isPlaying;
//     });
//     if (isPlaying) {
//       _startAnimation();
//     }
//   }

//   void _startAnimation() async {
//     while (isPlaying) {
//       await Future.delayed(const Duration(milliseconds: 150));
//       setState(() {
//         greenBars = List.generate(
//           baseBars.length,
//           (index) => _random.nextInt(baseBars[index] + 1),
//         );
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300.h,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(26.r),
//         border: Border.all(color: AppColors.greyColor, width: 1.7.w),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 17.w),
//         child: Column(
//           children: [
//             SizedBox(height: 20.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 BoldText(
//                   text: "audio_response".tr,
//                   fontSize: 30.sp,
//                   selectionColor: AppColors.blueColor,
//                 ),
//                 SizedBox(height: 30.h),
//                 Row(
//                   children: [
//                     Image.asset(
//                       Appimages.timeout2,
//                       height: 30.h,
//                       width: 30.w,
//                     ),
//                     MainText(
//                       text: "2 min read",
//                       fontSize: 24.sp,
//                       color: AppColors.teamColor,
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: 30.h),

//             // ✅ Waveform (Visualizer)
//             Expanded(
//               child: Container(
//                 width: double.infinity,
//                 height: 100.h,
//                 decoration: BoxDecoration(
//                   color: AppColors.forwardColor.withOpacity(0.2),
//                   borderRadius: BorderRadius.circular(9.r),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 12.w),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: baseBars.asMap().entries.map((entry) {
//                       int index = entry.key;
//                       int baseHeight = entry.value;
//                       int greenHeight = greenBars[index];
              
//                       return Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           // Grey static bar
//                           Container(
//                             margin: const EdgeInsets.symmetric(horizontal: 2),
//                             width: 3,
//                             height: baseHeight.toDouble(),
//                             color: Colors.grey.shade400,
//                           ),
//                           // Green animated bar
//                           AnimatedContainer(
//                             duration: const Duration(milliseconds: 150),
//                             margin: const EdgeInsets.symmetric(horizontal: 2),
//                             width: 3,
//                             height: greenHeight.toDouble(),
//                             color: AppColors.forwardColor,
//                           ),
//                         ],
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),

//             SizedBox(height: 30.h),

//             // ✅ Play / Pause button + timeline
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 InkWell(
//                   onTap: _togglePlayPause,
//                   child: Container(
//                     height: 45.h,
//                     width: 45.w,
//                     decoration: BoxDecoration(
//                       color: AppColors.forwardColor,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       isPlaying ? Icons.pause : Icons.play_arrow,
//                       color: AppColors.whiteColor,
//                       size: 30.sp,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     MainText(
//                       text: "1:45",
//                       color: AppColors.teamColor,
//                       fontSize: 20.sp,
//                     ),
//                     SizedBox(width: 6.w),
//                        Container(
//                         width: 100,
//                          child: LinearProgressIndicator(
//                            value:0.4, // 40%
//                            minHeight: 6.h,
//                            color: AppColors.forwardColor,
//                            backgroundColor: AppColors.greyColor,
//                            borderRadius: BorderRadius.circular(10),
//                          ),
//                        ),
//                     SizedBox(width: 6.w),
//                     MainText(
//                       text: "1:45",
//                       color: AppColors.teamColor,
//                       fontSize: 20.sp,
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class AudioContainer extends StatefulWidget {
  final int barCount; // ✅ jitne bars chaho utne pass kardo

  const AudioContainer({super.key, this.barCount = 50}); // default 50 bars

  @override
  State<AudioContainer> createState() => _AudioContainerState();
}

class _AudioContainerState extends State<AudioContainer> {
  final Random _random = Random();
  bool isPlaying = false;

  late List<int> baseBars;
  late List<int> greenBars;

  @override
  void initState() {
    super.initState();

    // ✅ Generate bars dynamically based on barCount
    baseBars = List.generate(
      widget.barCount,
      (i) => 20 + _random.nextInt(60), // 20–80 height range
    );

    greenBars = List.generate(baseBars.length, (i) => 5);
  }

  void _togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
    if (isPlaying) {
      _startAnimation();
    }
  }

  void _startAnimation() async {
    while (isPlaying) {
      await Future.delayed(const Duration(milliseconds: 150));
      setState(() {
        greenBars = List.generate(
          baseBars.length,
          (index) => _random.nextInt(baseBars[index] + 1),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.r),
        border: Border.all(color: AppColors.greyColor, width: 1.7.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(
                  text: "audio_response".tr,
                  fontSize: 30.sp,
                  selectionColor: AppColors.blueColor,
                ),
                Row(
                  children: [
                    Image.asset(
                      Appimages.timeout2,
                      height: 30.h,
                      width: 30.w,
                    ),
                    MainText(
                      text: "2 min read",
                      fontSize: 24.sp,
                      color: AppColors.teamColor,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30.h),

            // ✅ Waveform (Visualizer)
            Expanded(
              child: Container(
                
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.forwardColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Padding(
                 padding: EdgeInsets.only(top: 15.h, left: 10.w, right: 10.w), // 👈 yahan top padding
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: baseBars.asMap().entries.map((entry) {
                      int index = entry.key;
                      int baseHeight = entry.value;
                      int greenHeight = greenBars[index];

                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // Grey static bar
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            width: 3,
                            height: baseHeight.toDouble(),
                            // color: Colors.grey.shade400,
                            decoration: BoxDecoration(
                            color: Colors.grey.shade400,
borderRadius: BorderRadius.circular(20.r)
                            ),
                          ),
                          // Green animated bar
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 150),
                            margin: const EdgeInsets.symmetric(horizontal: 1),
                            width: 3,
                            height: greenHeight.toDouble(),
                            color: AppColors.forwardColor,
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.h),

            // ✅ Play / Pause button + timeline
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: _togglePlayPause,
                  child: Container(
                    height: 45.h,
                    width: 45.w,
                    decoration: BoxDecoration(
                      color: AppColors.forwardColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: AppColors.whiteColor,
                      size: 30.sp,
                    ),
                  ),
                ),
                Row(
                  children: [
                    MainText(
                      text: "1:45",
                      color: AppColors.teamColor,
                      fontSize: 20.sp,
                    ),
                    SizedBox(width: 6.w),
                    SizedBox(
                      width: 120.w,
                      child: LinearProgressIndicator(
                        value: 0.4, // 40%
                        minHeight: 6.h,
                        color: AppColors.forwardColor,
                        backgroundColor: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    MainText(
                      text: "3:20",
                      color: AppColors.teamColor,
                      fontSize: 20.sp,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h),

          ],
        ),
      ),
    );
  }
}
