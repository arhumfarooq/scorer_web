import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class StartScreen1 extends StatelessWidget {
  const StartScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(body: GradientBackground(child: SafeArea(child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     SizedBox(height: 112.h,),
    
    // Center(
    //   child: Container(
    // width: 1330.w,
    // height: 447.h,
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.circular(40),
    //   color: AppColors.whiteColor
    // ),
    // child: Stack(
    //   clipBehavior: Clip.none,
    //   children: [
    //     Positioned(
    //       left: -120,
    //       top: -170,
    //       child: SizedBox(
    
    //   height: 728.h,
    //                 width: 638.w,
    //         child: Image.asset(Appimages.man1,
                  
    //                 ),
    //       )),
    //     Padding(
    //       padding:  EdgeInsets.only(top: 80.h,bottom: 55.h),
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding:  EdgeInsets.only(
    //               left: 280,
    //               right: 208.w
    //             ),
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
                    
    //                 Center(
    //                   child: BoldText(text: "Gamify Your Training Like\nNever Before",textAlign: TextAlign.center,
    //                   fontSize: 48.sp,selectionColor: AppColors.blueColor,height: 1.7.h,
    //                   ),
                      
    //                 ),
    //                 SizedBox(height: 23.h,),
                    
    //                 Center(child: MainText(
    //                   textAlign: TextAlign.center,
    //                   text: "Experience real-time scoring, interactive challenges, and instant AI-\npowered feedback. Score’Master+ keeps every participant engaged\nand motivated from start to finish."))
                
    //              ,               ],
    //             ),
    //           ),
    //           SizedBox(height: 30.h,),
    //           Padding(
    //             padding: EdgeInsets.only(right: 74.w,left: 730.w),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
                
    //                 Row(
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               crossAxisAlignment: CrossAxisAlignment.center,
    //                               children: [
    //                                 PageChangedContainer(
    //                                   color: AppColors.forwardColor,
    //                                   width: 31.4.w,
    //                                   height: 8.h,
    //                                 ),
    //                                 SizedBox(width: 10.w),
    //                                 PageChangedContainer(
    //                                   color: AppColors.pageColor,
    //                                   width: 11.w,
    //                                   height: 8.h,
    //                                 ),
    //                                 SizedBox(width: 10.w),
    //                                 PageChangedContainer(
    //                                   color: AppColors.pageColor,
    //                                  width: 11.w,
    //                                   height: 8.h,
    //                                 ),
    //                               ],
    //                             ),
                                
    //                             ForwardButtonContainer()
    //               ],
    //             ),
    //           ),
                
           
    //         ],
    //       ),
    //     )
    //   ],
    // ),
    //   ),
    // ),
    // //  Spacer(),
    
    //  Padding(
    //    padding:  EdgeInsets.only(left: 54.h,),
    //    child: SizedBox(
    //         width: 136.w,
    //         height: 118.h,
    //         child: SvgPicture.asset(Appimages.splash,)),
    //  )
     
    //   ],
    // )
    
    
    // )
    
    
    // ),);
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
                    left: -120,
                    top: -170,
                    child: SizedBox(
                      height: 728.h,
                      width: 638.w,
                      child: Image.asset(Appimages.man1),
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
                                      "Gamify Your Training Like\nNever Before",
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
                                      "Experience real-time scoring, interactive challenges, and instant AI-\npowered feedback. Score’Master+ keeps every participant engaged\nand motivated from start to finish.",
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
                              ForwardButtonContainer(
                                  onTap:(){
                            Get.toNamed(RouteName.startScreen2);
                          } ,
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