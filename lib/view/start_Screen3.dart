import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class StartScreen3 extends StatelessWidget {
  const StartScreen3({super.key});

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
                    left: -150,
                    top: -170,
                    child: SizedBox(
                      height: 775.h,
                      width: 686.w,
                      child: Image.asset(Appimages.game2),
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
                                      "One Platform, Many Games",
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
"Play and score across multiple formats Odyssée des OKR,\nFeedLoop, Elo’R, Transform’Action, and Eranove Odyssey each\ndesigned for unique training experiences."
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
                                  ForwardButtonContainer(image: Appimages.arrowback,),
SizedBox(width: 10.w,),
                                  ForwardButtonContainer(),
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