











































































































                               










import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class AudioContainer extends StatelessWidget {
  const AudioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    
  

    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.r),
        border: Border.all(color: AppColors.greyColor, width: 1.7.w),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17 .w),
        child: Column(
          children: [
            SizedBox(height: 20 .h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoldText(
                 text: "audio_response".tr,
                  fontSize: 16 .sp,
                  selectionColor: AppColors.blueColor,
                ),
                SizedBox(height: 25 .h),
                Row(
                  children: [
                    Image.asset(
                      Appimages.timeout2,
                      height: 23.h,
                      width: 23.w,
                    ),
                    MainText(
                      text: "2 min read",
                      fontSize: 14 .sp,
                      color: AppColors.teamColor,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10.h,),
            Container(
              width: double.infinity,
              // width: 300 .w,
              height: 52 .h,
              decoration: BoxDecoration(
                color: AppColors.forwardColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(9 .r),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  // left: ,
                  // right: 11 * scaleWidth,
                  bottom: 6 .h,
                  top: 9 .h,
                ),
                child: Row(
                  children: [
                    SizedBox(
                       width: 400,

                      child: SvgPicture.asset(
                        Appimages.lines,
                        height: 42.h,
                      ),
                    ),
                    SizedBox(
                       width: 400,
                      child: SvgPicture.asset(
                        Appimages.lines2,
                        // height: 400.h,
                        // width: 400,
                      ),
                    ),
                    Expanded(
                      child: SvgPicture.asset(
                        Appimages.lines2,
                        height: 42.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20 .h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 31 .h,
                  width: 31 .w,
                  decoration: BoxDecoration(
                    color: AppColors.forwardColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_sharp,
                    color: AppColors.whiteColor,
                    size: 20 .sp, 
                  ),
                ),
                Row(
                  children: [
                    MainText(
                      text: "1:45",
                      color: AppColors.teamColor,
                      fontSize: 14 .sp,
                    ),
                    SizedBox(width: 6 .w),
                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 3 .h,
                          decoration: BoxDecoration(
                            color: AppColors.forwardColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4 .r),
                              topLeft: Radius.circular(4 .r),
                            ),
                          ),
                        ),
                        Container(
                          width: 42 .w,
                          height: 3 .h,
                          decoration: BoxDecoration(
                            color: AppColors.teamColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(4 .r),
                              topRight: Radius.circular(4 .r),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 6.w),
                    MainText(
                      text: "1:45",
                      color: AppColors.teamColor,
                      fontSize: 14 .sp,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}