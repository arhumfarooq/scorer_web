// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/route_manager.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/constants/route_name.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/page_changed_container.dart';

// class StartScreen3 extends StatelessWidget {
//   const StartScreen3({super.key});

//   @override
//   Widget build(BuildContext context) {
//        return Scaffold(
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
//                     left: -150,
//                     top: -170,
//                     child: SizedBox(
//                       height: 775.h,
//                       width: 686.w,
//                       child: Image.asset(Appimages.game2),
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
//                                       "One Platform, Many Games",
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
// "Play and score across multiple formats Odyssée des OKR,\nFeedLoop, Elo’R, Transform’Action, and Eranove Odyssey each\ndesigned for unique training experiences."
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
//   PageChangedContainer(
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
//                                   SizedBox(width: 10.w),
//                                  PageChangedContainer(
//                                     color: AppColors.forwardColor,
//                                     width: 31.4.w,
//                                     height: 8.h,
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   ForwardButtonContainer(image: Appimages.arrowback,
//                                   onTap: () => Get.back(),
//                                   ),
// SizedBox(width: 10.w,),
//                                   ForwardButtonContainer(
//                                      onTap:(){
//                         Get.toNamed(RouteName.chooseYourRoleScreen);
//                       },
//                                   ),
//                                 ],
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

class StartScreen3 extends StatefulWidget {
  const StartScreen3({super.key});

  @override
  State<StartScreen3> createState() => _StartScreen3State();
}

class _StartScreen3State extends State<StartScreen3>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _scaleController;
  late Animation<Offset> _slideImage;

  @override
  void initState() {
    super.initState();

    _fadeController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 900))
          ..forward();

    _slideController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1000))
          ..forward();

    _scaleController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 800))
          ..forward();

    _slideImage = Tween<Offset>(
      begin: const Offset(-0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOut,
    ));
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
              /// Center Container with Scale Animation
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
                        /// Left Side Image Slide Transition
                        Positioned(
                          left: -150,
                          top: -170,
                          child: SlideTransition(
                            position: _slideImage,
                            child: SizedBox(
                              height: 735.h,
                              width: 686.w,
                              child: Image.asset(Appimages.game2),
                            ),
                          ),
                        ),

                        /// Fade-in Text and Buttons
                        FadeTransition(
                          opacity: _fadeController,
                          child: Padding(
                            padding: EdgeInsets.only(top: 80.h, bottom: 55.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 280, right: 208.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: BoldText(
                                          text: "One Platform, Many Games",
                                          textAlign: TextAlign.center,
                                          fontSize: 48.sp,
                                          selectionColor: AppColors.blueColor,
                                          height: 1.7.h,
                                        ),
                                      ),
                                      SizedBox(height: 23.h),
                                      Center(
                                        child: MainText(
                                          textAlign: TextAlign.center,
                                          text:
                                              "Play and score across multiple formats Odyssée des OKR,\nFeedLoop, Elo’R, Transform’Action, and Eranove Odyssey each\ndesigned for unique training experiences.",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.h),

                                /// Page Indicators + Buttons
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
                                          SizedBox(width: 10.w),
                                          PageChangedContainer(
                                            color: AppColors.forwardColor,
                                            width: 31.4.w,
                                            height: 8.h,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          ForwardButtonContainer(
                                            image: Appimages.arrowback,
                                            onTap: () => Get.back(),
                                          ),
                                          SizedBox(width: 10.w),
                                          ForwardButtonContainer(
                                            onTap: () {
                                              Get.toNamed(RouteName
                                                  .chooseYourRoleScreen);
                                            },
                                          ),
                                        ],
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

              /// Bottom SVG (fade-in)
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
