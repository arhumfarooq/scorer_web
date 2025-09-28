
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// import 'package:scorer/widgets/main_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class AnalysisContainer extends StatelessWidget {
  final double? height;
  final bool ishow;

  const AnalysisContainer({super.key, this.height, this.ishow = false});

  @override
  Widget build(BuildContext context) {
    
   

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height ?? 580 .h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.r),
            border: Border.all(color: AppColors.greyColor, width: 1.7 .w),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 80 .h,
                right: 310 .w,
                child: SvgPicture.asset(Appimages.arrowdown),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16 .sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20 .h),
                    Center(
                      child: BoldText(
                        text:  "ai_analysis_suggestion".tr,
                        fontSize: 31.sp,
                        selectionColor: AppColors.blueColor,
                      ),
                    ),
                    SizedBox(height: 28 .h),
                    Center(
                      child: Image.asset(
                        Appimages.ai2,
                        width: 90 .w,
                        height: 90 .h,
                      ),
                    ),
                    SizedBox(height: 20 .h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                        text: "relevance_to_question".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 26.sp,
                        ),
                        BoldText(
                          text: "95%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 26 .sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 .h),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 220 .w,
                            height: 8 .h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 .r),
                                topLeft: Radius.circular(20 .r),
                              ),
                              color: AppColors.forwardColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 44 .w,
                            height: 8 .h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 .r),
                                topRight: Radius.circular(20 .r),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30 .h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                          text: "strategic_depth".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 26 .sp,
                        ),
                        BoldText(
                          text: "85%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 26 .sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 .h),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 180 .w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 .r),
                                topLeft: Radius.circular(20 .r),
                              ),
                              color: AppColors.percenColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: 84 .w,
                            height: 8 .h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 .r),
                                topRight: Radius.circular(20 .r),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30 .h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoldText(
                         text: "implementation_clarity".tr,
                          selectionColor: AppColors.blueColor,
                          fontSize: 26 .sp,
                        ),
                        BoldText(
                          text: "42%",
                          selectionColor: AppColors.blueColor,
                          fontSize: 26 .sp,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 .h),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: 130 .w,
                            height: 8 .h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20 .r),
                                topLeft: Radius.circular(20 .r),
                              ),
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 134 .w,
                            height: 8.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20 .r),
                                topRight: Radius.circular(20 .r),
                              ),
                              color: AppColors.greyColor,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25 .h),
                  MainText(
  text: "AI Suggested Score: 9.1/10 - Comprehensive response with clear objectives, well-defined strategies, and realistic implementation timeline.".tr,
  fontSize: 22 .sp,
  height: 1.2,
),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (ishow)
          Positioned(
            bottom: -75 .h,
            // left: 57 * scaleWidth,
            // right: 57 * scaleWidth,
            child: Container(
              height: 181 .h, 
              width: 181 .w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.forwardColor,
                    Colors.grey.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(3 ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 202, 202, 202),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BoldText(
                      text: "89/100",
                      fontSize: 30.sp,
                      selectionColor: AppColors.createBorderColor,
                    ),
                    SizedBox(height: 4 .h),
                    BoldText(
                       text: "final_score".tr,

                      fontSize: 16 .sp,
                      selectionColor: AppColors.blueColor,
                    )
                  ],
                ),
              ),
            ),
          )
        else
          SizedBox.shrink(),
      ],
    );
  }
}