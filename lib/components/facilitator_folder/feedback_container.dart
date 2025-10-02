
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';


class FeedbackContainer extends StatelessWidget {
  final bool ishow;
  const FeedbackContainer({super.key, this.ishow = false});

  @override
  Widget build(BuildContext context) {
    
   

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 470.h, 
          width:double.infinity ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.r ),
            border: Border.all(color: AppColors.greyColor, width: 1.7 ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100 .h),
                BoldText(
text: "AI Feedback".tr,
                  fontSize: 32.sp ,
                  selectionColor: AppColors.languageTextColor,
                ),
                SizedBox(height: 20.h,),
             MainText(
  text: """Excellent strategic thinking with a comprehensive digital transformation approach. The timeline is realistic and the  three-phase implementation shows strong project management skills. Great work on considering both technical and human aspects.""".tr,
  fontSize: 28.sp ,
  height: 1.3,
),
              ],
            ),
          ),
        ),
        Positioned(
          top: -160.h ,
          // left: 230.w ,
          left: 0,
          right: 0,
          child: Container(
            height: 270.h , 
            width: 270.w,
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
                    fontSize: 37.sp ,
                    selectionColor: AppColors.createBorderColor,
                  ),
                  SizedBox(height: 4 ),
                  BoldText(
                    text: "final_score".tr,
                    fontSize: 28.sp ,
                    selectionColor: AppColors.blueColor,
                  )
                ],
              ),
            ),
          ),
        ),
        if (ishow)
          Positioned(
            top: -175 ,
            left: 380.w ,
            child: SvgPicture.asset(
              Appimages.arrowdown,
              height: 38 ,
              width: 31 ,
            ),
          ),
        if (ishow)
          Positioned(
            top: -170 ,
            left: 110.w ,
            right: 110.w,
            child: Image.asset(
              Appimages.ai2,
              height: 116 ,
              width: 115 ,
            ),
          ),
      ],
    );
  }
}