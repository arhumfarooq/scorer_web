import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class StartScreen2 extends StatelessWidget {
  const StartScreen2({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
  body: GradientBackground(
    child: SafeArea(
      child: Stack(
        children: [
          /// Center me container
          Center(
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
                  Positioned(
                    left: -220,
                    top: -170,
                    child: SizedBox(
                      height: 738.h,
                      width: 994.w,
                      child: Image.asset(Appimages.glass),
                    ),
                  ),
                  Padding(
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
                                  text:
                                      "A Role for Everyone",
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
                                      "Whether you’re an Administrator setting up sessions, a Facilitator\nmanaging the game, or a Player competing for the top spot,\nScore’Master+ is designed to fit your role perfectly."
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 74.w, left: 730.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  ForwardButtonContainer(image: Appimages.arrowback,
                                  
                                  onTap: () => Get.back(),
                                  ),
SizedBox(width: 10.w,),
                                  ForwardButtonContainer(
                                      onTap:(){
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
                  )
                ],
              ),
            ),
          ),

          /// Bottom me SVG
          Positioned(
             bottom: 54.h,
            left: 54.w,
            child: SizedBox(
              width: 136.w,
              height: 118.h,
              child: SvgPicture.asset(Appimages.splash),
            ),
          ),
        ],
      ),
    ),
  ),
);
  }
}