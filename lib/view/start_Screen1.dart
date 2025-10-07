// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/constants/route_name.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/page_changed_container.dart';

// class StartScreen1 extends StatelessWidget {
//   const StartScreen1({super.key});

//   @override
//   Widget build(BuildContext context) {
// ;
//     return Scaffold(
//   body: GradientBackground(
//     child: SafeArea(
//       child: Stack(
//         children: [
//           /// Center me container
//           Center(
//             child: Container(
//               width: 1330.w,
//               height: 447.h,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(40),
//                 color: AppColors.whiteColor,
//               ),
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Positioned(
//                     left: -120,
//                     top: -170,
//                     child: SizedBox(
//                       height: 728.h,
//                       width: 638.w,
//                       child: Image.asset(Appimages.man1),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 80.h, bottom: 55.h),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 280, right: 208.w),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Center(
//                                 child: BoldText(
//                                   text:
//                                       "Gamify Your Training Like\nNever Before",
//                                   textAlign: TextAlign.center,
//                                   fontSize: 48.sp,
//                                   selectionColor: AppColors.blueColor,
//                                   height: 1.7.h,
//                                 ),
//                               ),
//                               SizedBox(height: 23.h),
//                               Center(
//                                 child: MainText(
//                                   textAlign: TextAlign.center,
//                                   text:
//                                       "Experience real-time scoring, interactive challenges, and instant AI-\npowered feedback. Score’Master+ keeps every participant engaged\nand motivated from start to finish.",
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 30.h),
//                         Padding(
//                           padding:
//                               EdgeInsets.only(right: 74.w, left: 730.w),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   PageChangedContainer(
//                                     color: AppColors.forwardColor,
//                                     width: 31.4.w,
//                                     height: 8.h,
//                                   ),
//                                   SizedBox(width: 10.w),
//                                   PageChangedContainer(
//                                     color: AppColors.pageColor,
//                                     width: 11.w,
//                                     height: 8.h,
//                                   ),
//                                   SizedBox(width: 10.w),
//                                   PageChangedContainer(
//                                     color: AppColors.pageColor,
//                                     width: 11.w,
//                                     height: 8.h,
//                                   ),
//                                 ],
//                               ),
//                               ForwardButtonContainer(
//                                   onTap:(){
//                             Get.toNamed(RouteName.startScreen2);
//                           } ,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),

//           /// Bottom me SVG
//           Positioned(
//              bottom: 54.h,
//             left: 54.w,
//             child: SizedBox(
//               width: 136.w,
//               height: 118.h,
//               child: SvgPicture.asset(Appimages.splash),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// );

//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/constants/route_name.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/page_changed_container.dart';

// class StartScreen1 extends StatefulWidget {
//   const StartScreen1({super.key});

//   @override
//   State<StartScreen1> createState() => _StartScreen1State();
// }

// class _StartScreen1State extends State<StartScreen1>
//     with TickerProviderStateMixin {
//   late AnimationController _fadeController;
//   late AnimationController _slideController;
//   late AnimationController _scaleController;
//   late Animation<Offset> _slideImage;


//   @override
//   void initState() {
//     super.initState();

//     _fadeController =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 1000))
//           ..forward();

//     _slideController =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))
//           ..forward();

//     _scaleController =
//         AnimationController(vsync: this, duration: const Duration(milliseconds: 800))
//           ..forward();
//   }

//   @override
//   void dispose() {
//     _fadeController.dispose();
//     _slideController.dispose();
//     _scaleController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Stack(
//             children: [
//               /// Center Container
//               Center(
//                 child: ScaleTransition(
//                   scale: CurvedAnimation(
//                     parent: _scaleController,
//                     curve: Curves.easeOutBack,
//                   ),
//                   child: Container(
//                     width: 1330.w,
//                     height: 447.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(40),
//                       color: AppColors.whiteColor,
//                     ),
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         /// Animated Image
//                         // AnimatedSlide(
//                         //   offset: _slideController.isCompleted
//                         //       ? Offset.zero
//                         //       : const Offset(-0.3, 0),
//                         //   duration:  Duration(milliseconds: 900),
//                         //   curve: Curves.easeOut,
//                         //   child: Positioned(
//                         //     left: -120,
//                         //     top: -170,
//                         //     child: SizedBox(
//                         //       height: 1000.h,
//                         //       width: 800.w,
//                         //       child: Image.asset(Appimages.man1),
//                         //     ),
//                         //   ),
//                         // ),
// Positioned(
//   left: -20.w,
//   top: -240.h,
//   child: SlideTransition(
//      position: _slideImage,
//     child: SizedBox(
//        height: 728.h,
//                       width: 638.w,
//       child: Image.asset(Appimages.man1),
//     ),
//   ),
// ),

//                         /// Text + Button Section
//                         FadeTransition(
//                           opacity: _fadeController,
//                           child: Padding(
//                             padding: EdgeInsets.only(top: 80.h, bottom: 55.h),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 280, right: 208.w),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Center(
//                                         child: BoldText(
//                                           text:
//                                               "Gamify Your Training Like\nNever Before",
//                                           textAlign: TextAlign.center,
//                                           fontSize: 48.sp,
//                                           selectionColor: AppColors.blueColor,
//                                           height: 1.7.h,
//                                         ),
//                                       ),
//                                       SizedBox(height: 23.h),
//                                       Center(
//                                         child: MainText(
//                                           textAlign: TextAlign.center,
//                                           text:
//                                               "Experience real-time scoring, interactive challenges, and instant AI-\npowered feedback. Score’Master+ keeps every participant engaged\nand motivated from start to finish.",
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 30.h),
//                                 Padding(
//                                   padding: EdgeInsets.only(right: 74.w, left: 730.w),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           PageChangedContainer(
//                                             color: AppColors.forwardColor,
//                                             width: 31.4.w,
//                                             height: 8.h,
//                                           ),
//                                           SizedBox(width: 10.w),
//                                           PageChangedContainer(
//                                             color: AppColors.pageColor,
//                                             width: 11.w,
//                                             height: 8.h,
//                                           ),
//                                           SizedBox(width: 10.w),
//                                           PageChangedContainer(
//                                             color: AppColors.pageColor,
//                                             width: 11.w,
//                                             height: 8.h,
//                                           ),
//                                         ],
//                                       ),
//                                       FadeTransition(
//                                         opacity: _fadeController,
//                                         child: ForwardButtonContainer(
//                                           onTap: () {
//                                             Get.toNamed(RouteName.startScreen2);
//                                           },
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               /// Bottom SVG (Fade-in)
//               Positioned(
//                 bottom: 54.h,
//                 left: 54.w,
//                 child: FadeTransition(
//                   opacity: _fadeController,
//                   child: SizedBox(
//                     width: 136.w,
//                     height: 118.h,
//                     child: SvgPicture.asset(Appimages.splash),
//                   ),
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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class StartScreen1 extends StatefulWidget {
  const StartScreen1({super.key});

  @override
  State<StartScreen1> createState() => _StartScreen1State();
}

class _StartScreen1State extends State<StartScreen1>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _scaleController;
  late Animation<Offset> _slideImage;

  @override
  void initState() {
    super.initState();

    /// Fade animation controller
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward();

    /// Slide animation controller
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    /// Scale animation controller
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    /// Define image slide transition (left to right)
    _slideImage = Tween<Offset>(
      begin: const Offset(-0.3, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.easeOut,
      ),
    );

    /// Run all animations with small delays for smoother flow
    Future.delayed(const Duration(milliseconds: 150), () {
      _scaleController.forward();
      _slideController.forward();
      _fadeController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Stack(
            children: [
              /// Center Container
              Center(
                child: ScaleTransition(
                  scale: CurvedAnimation(
                    parent: _scaleController,
                    curve: Curves.easeOutBack,
                  ),
                  child: Container(
                    width: 1330.w,
                    height: 447.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: AppColors.whiteColor,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        /// Animated Image (slide-in from left)
                        Positioned(
                          left: -190.w,
                          top: -240.h,
                          child: SlideTransition(
                            position: _slideImage,
                            child: SizedBox(
                              height: 728.h,
                              width: 638.w,
                              child: Image.asset(Appimages.man1),
                            ),
                          ),
                        ),

                        /// Text + Button Section (fade-in)
                        FadeTransition(
                          opacity: _fadeController,
                          child: Padding(
                            padding: EdgeInsets.only(top: 80.h, bottom: 55.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 280, right: 208.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: BoldText(
                                          text:
                                              "Gamify Your Training Like\nNever Before",
                                          textAlign: TextAlign.center,
                                          fontSize: 48.sp,
                                          selectionColor:
                                              AppColors.blueColor,
                                          height: 1.7.h,
                                        ),
                                      ),
                                      SizedBox(height: 23.h),
                                      Center(
                                        child: MainText(
                                          textAlign: TextAlign.center,
                                          text:
                                              "Experience real-time scoring, interactive challenges, and instant AI-\npowered feedback. Score’Master+ keeps every participant engaged\nand motivated from start to finish.",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.h),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 74.w, left: 730.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          PageChangedContainer(
                                            color: AppColors.forwardColor,
                                            width: 31.4.w,
                                            height: 8.h,
                                          ),
                                          SizedBox(width: 10.w),
                                          PageChangedContainer(
                                            color: AppColors.pageColor,
                                            width: 11.w,
                                            height: 8.h,
                                          ),
                                          SizedBox(width: 10.w),
                                          PageChangedContainer(
                                            color: AppColors.pageColor,
                                            width: 11.w,
                                            height: 8.h,
                                          ),
                                        ],
                                      ),
                                      FadeTransition(
                                        opacity: _fadeController,
                                        child: ForwardButtonContainer(
                                          onTap: () {
                                            Get.toNamed(
                                                RouteName.startScreen2);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// Bottom SVG (Fade-in)
              // Positioned(
              //   bottom: 54.h,
              //   left: 54.w,
              //   child: FadeTransition(
              //     opacity: _fadeController,
              //     child: SizedBox(
              //       width: 136.w,
              //       height: 118.h,
              //       child: SvgPicture.asset(Appimages.splash),
              //     ),
              //   ),
              // ),
               Positioned(
                bottom: 54.h,
                left: 54.w,
                child: TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 1500),
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  builder: (context, double value, child) {
                    final clampedValue = value.clamp(0.0, 1.0);
                    return Opacity(
                      opacity: clampedValue,
                      child: Transform.translate(
                        offset: Offset(-50 * (1 - clampedValue), 0),
                        child: child,
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 136.w,
                    height: 118.h,
                    child: SvgPicture.asset(Appimages.splash),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
