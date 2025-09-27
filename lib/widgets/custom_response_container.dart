import 'package:flutter/material.dart';
// Import the screenutil package for responsive extensions
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
// Removed ResponsiveFonts import as ScreenUtil handles this now
// import 'package:scorer/components/responsive_fonts.dart'; 

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class CustomResponseContainer extends StatelessWidget {
  final String? text;
  final bool ishow;
  final Color? color1;
  final String? text1;
  final String? image;
  final Color? textColor;
  // Note: Using nullable doubles for flexibility, but they should ideally be based on scaled units if provided.
  final double? containerHeight;
  final double? containerWidth;
  final bool ishow1;
  final VoidCallback? onTap;

  const CustomResponseContainer({
    super.key,
    this.text,
    this.ishow = false,
    this.color1,
    this.text1,
    this.image,
    this.textColor,
    this.containerHeight,
    this.containerWidth,
    this.ishow1 = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // All manual MediaQuery and scale factor calculations are removed.
    bool isSpanish = Get.locale?.languageCode == 'es';

    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            // Converted: 226 * scaleHeight -> 226.h (scaled height)
            height: containerHeight ?? 270.h,
            // Converted: 346 * scaleWidth -> 346.w (scaled width)
            width: containerWidth ?? double.infinity,
            decoration: BoxDecoration(
              // Converted: 24 * scaleWidth -> 24.r (scaled radius)
              borderRadius: BorderRadius.circular(24.r),
              // Converted: 1.7 * scaleWidth -> 1.7.w (scaled width for border)
              border: Border.all(color: AppColors.greyColor, width: 1.7.w),
            ),
            child: Padding(
              // Converted: 17 * scaleWidth -> 17.w (scaled horizontal padding)
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                children: [
                  // Converted: 16 * scaleHeight -> 16.h (scaled vertical spacing)
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Appimages.blackgirl,
                            // Converted: 47 * scaleHeight -> 47.h
                            height: 60.h,
                            // Converted: 35 * scaleWidth -> 35.w
                            width: 60.w,
                          ),
                          // Converted: 3 * scaleWidth -> 3.w
                          SizedBox(width: 3.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MainText(
                                text: "Sarah Johnson",
                                // Converted: 14 * scaleWidth -> 14.sp (scaled font size)
                                fontSize: 24.sp,
                              ),
                              MainText(
                                text: "Team Beta 3:42 PM",
                                color: AppColors.teamColor,
                                // Converted: 13 * scaleWidth -> 13.sp
                                fontSize: 20.sp,
                                height: 1,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UseableContainer(
                            text: text ?? "pending".tr,
                            // Converted: 28 * scaleHeight -> 28.h
                            // height: 28.h,
                            // // Converted: 75 * scaleWidth -> 75.w
                            // width: 75.w,
                            color: color1 ?? AppColors.yellowColor,
                            textColor: textColor ?? AppColors.languageTextColor,
                            // Converted: 12 * scaleWidth -> 12.sp, conditionally 10.sp
                            // fontSize: isSpanish ? 10.sp : 12.sp,
                          ),
                          // Converted: 4 * scaleWidth -> 4.w
                          SizedBox(width: 4.w),
                          UseableContainer(
                            text: "78",
                            fontFamily: "giory",
                            // Converted: 14 * scaleWidth -> 14.sp
                            // fontSize: 14.sp,
                            // Converted: 37 * scaleWidth -> 37.w
                            width: 50.w,
                            // Converted: 28 * scaleHeight -> 28.h
                            height: 42.h,
                            color: AppColors.orangeColor,
                          )
                        ],
                      )
                    ],
                  ),
                  // Converted: 17 * scaleHeight -> 17.h
                  SizedBox(height: 30.h),
                  MainText(
                    text: "Our primary objective is to increase customer satisfaction by 25% through Improved service delivery.",
                    // Replaced custom ResponsiveFont with standard scaled font size (14.sp)
                    fontSize: 22.sp, 
                    height: 1.5.h,
                  ),
                  const Spacer(),
                  if (ishow1)
                    LoginButton(
                      // Converted: 14 * scaleWidth -> 14.sp
                      fontSize: 24.sp,
                      fontFamily: "refsan",
                      // Converted: 17 * scaleHeight -> 17.h
                      imageHeight: 17.h,
                      // Converted: 18 * scaleWidth -> 18.w
                      imageWidth: 18.w,
                      text: text1?.tr ?? "evaluate".tr,
                      // Converted: 45 * scaleHeight -> 45.h
                      height: 70.h,
                      // Converted: 300 * scaleWidth -> 300.w
                      width: 300.w,
                      // Converted: 12 * scaleWidth -> 12.r
                      radius: 12.r,
                      image: image ?? Appimages.star,
                      ishow: true,
                    )
                  else
                    const SizedBox.shrink(),
                  // Converted: 20 * scaleHeight -> 20.h
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
        if (ishow)
          Positioned(
            // Converted: 70 * scaleHeight -> 70.h
            top: 70.h,
            // Converted: 14 * scaleWidth -> 14.w
            right: 14.w,
            child: Image.asset(
              Appimages.ai2,
              // Converted: 38 * scaleHeight -> 38.h
              height: 48.h,
              // Converted: 38 * scaleWidth -> 38.w
              width: 48.w,
            ),
          ),
        if (ishow)
          Positioned(
            // Converted: 60 * scaleHeight -> 60.h
            top: 60.h,
            // Converted: -6 * scaleWidth -> -6.w
            right: -6.w,
            child: SvgPicture.asset(
              Appimages.arrowdown,
              // Converted: 22 * scaleHeight -> 22.h
              height: 39.h,
              // Converted: 20 * scaleWidth -> 20.w
              width: 28.w,
            ),
          ),
      ],
    );
  }
}
