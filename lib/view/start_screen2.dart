import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class StartScreen2 extends StatefulWidget {
  const StartScreen2({super.key});

  @override
  State<StartScreen2> createState() => _StartScreen2State();
}

class _StartScreen2State extends State<StartScreen2>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideImage;
  late Animation<double> _fadeText;
  late AnimationController _scaleController;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _slideImage =
        Tween<Offset>(begin: const Offset(-0.3, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _fadeText = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();

    Future.delayed(const Duration(milliseconds: 200), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
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
              /// Main Container Animation
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
                        /// Left Image Animation
                        Positioned(
                          left: -220,
                          top: -170,
                          child: SlideTransition(
                            position: _slideImage,
                            child: SizedBox(
                              height: 738.h,
                              width: 994.w,
                              child: Image.asset(Appimages.glass),
                            ),
                          ),
                        ),

                        /// Text Animation
                        FadeTransition(
                          opacity: _fadeText,
                          child: Padding(
                            padding: EdgeInsets.only(top: 80.h, bottom: 55.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 280, right: 208.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: BoldText(
                                          text: "A Role for Everyone",
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
                                              "Whether you’re an Administrator setting up sessions, a Facilitator\nmanaging the game, or a Player competing for the top spot,\nScore’Master+ is designed to fit your role perfectly.",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30.h),

                                /// Navigation Row
                                Padding(
                                  padding: EdgeInsets.only(right: 74.w, left: 730.w),
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
                                              Get.toNamed(RouteName.startScreen3);
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

              /// Bottom Left SVG Animation
              Positioned(
                bottom: 54.h,
                left: 54.w,
                child: TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 1500),
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  builder: (context, double value, child) {
                    final opacity = value.clamp(0.0, 1.0);
                    return Opacity(
                      opacity: opacity,
                      child: Transform.translate(
                        offset: Offset(-50 * (1 - opacity), 0),
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
