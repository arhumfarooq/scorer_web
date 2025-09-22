
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/pause_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:scorer/compon

class CustomDashboardContainer extends StatelessWidget {
  final String heading;
  final String text1;
  final String text2;
  final Color? color1;
  final Color? color2;
  final String description;
  final IconData? icon1;
  final IconData? icon2;
  final String? text3;
  final String? text4;
  final String? text5;
  final String? text6;
  final bool ishow;
  final String? text7;
  final Color? color3;
  final IconData? icon3;
  final String? svg;
  final double? height1;
  final double? height2;
  final double? width;
  final double? width2;
  final double? height;
  final bool isshow;
  final String? smallImage;
  final double? right;
  final double?horizontal;
  final double?mainWidth;
  final double?mainHeight;
  final bool arrowshow;
  final VoidCallback? onTap;


  const CustomDashboardContainer({
    super.key,
    required this.heading,
    required this.text1,
    required this.text2,
    this.color1,
    this.color2,
    required this.description,
    this.icon1,
    this.icon2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.ishow = true,
    this.text7,
    this.icon3,
    this.color3,
    this.svg,
    this.height1,
    this.height2,
    this.width,
    this.width2,
    this.height,  this.isshow=false, this.smallImage, this.right, this.horizontal, this.mainWidth, this.mainHeight,  this.arrowshow=true, this.onTap,
  });
  bool get isSpanish => Get.locale?.languageCode == "es";

  @override
  Widget build(BuildContext context) {
    
    
   
    return Stack(
      clipBehavior: Clip.none,
      children: [
        
      Container(
        
        
        //  width: 698.w,
      //   height: 602.h,
        height:mainHeight??602.h  ,
        width:mainWidth?? 698.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyColor,
            width: 1.5 .w,
          ),
          borderRadius: BorderRadius.circular(24 .r),
        ),
        child: Column(
           mainAxisSize: MainAxisSize.min, 
          children: [
            SizedBox(height: 29 .h),
            BoldText(
              text: heading,
              selectionColor: AppColors.blueColor,
              fontSize: 32 .sp,
            ),
            SizedBox(height: 27 .h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseableContainer(
                  height: 42.h,
                  width: width??129.w,
                  fontSize: 22.sp,
                  text: text1,
                  color: color1 ?? AppColors.orangeColor,
                ),
                SizedBox(width: 6 .w),
                UseableContainer(
                  height: 42.h,
                  width: width??129.w,
                  fontSize: 22.sp,
                  text: text2,
                  color: color2 ?? AppColors.forwardColor,
                ),
              ],
            ),
            SizedBox(height: 27.h),
            MainText(
              text: description,
              textAlign: TextAlign.center,
              height: 1.3,
              fontSize: 28 .sp,
            ),
            SizedBox(height: (height ?? 37) .h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Appimages.player2,
                      height: 54 .h,
                      width: 40.w,
                    ),
                  MainText(
  text: text5 ?? "players_12".tr,
  fontSize: 28 .sp,
),
                  ],
                ),
                SizedBox(width: 9 .w),
            Row(
        children: [
          if (smallImage?.endsWith('.svg') ?? false) 
            SvgPicture.asset(
              smallImage!,
              height: 59.h,
              width: 59.w,
            )
          else
            Image.asset(
              smallImage ?? Appimages.timeout2,
            height: 59.h,
              width: 59.w,
            ),
      
          SizedBox(width: 6 .w),
      
        MainText(
  text: text6 ?? "time_left_25".tr,
  fontSize: 28.sp,
  color: AppColors.redColor,
),
        ],
      )
      
              ],
            ),
           Spacer(),
          
             isshow ? SizedBox():        ishow
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17 .w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PauseContainer(
                          // height: 35,
                        fontSize:ResponsiveFont.getFontSizeCustom(
                        // defaultSize: 13.sp,
                        // smallSize: 11.sp
                        
                        ),
                          text: text3 ?? "",
                          icon: icon1,
                        ),
                        SizedBox(width: 10 .w),
                        PauseContainer(
                            fontSize:ResponsiveFont.getFontSizeCustom(
                        // defaultSize: 13*widthScaleFactor,
                        // smallSize: 11*widthScaleFactor
                        
                        ),
                          // height: 35,
                          color: AppColors.forwardColor,
                          text: text4 ?? "",
                          icon: icon2,
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17 .w),
                    child: PauseContainer(
                      onTap: onTap,
                      height: 35.h,
                      width: 300 .w,
                      color: color3,
                      text: text7 ?? "",
                      icon: icon3,
                      svgPath: svg,
                    ),
                  ),

                   SizedBox(height: 46 .h),
          ],
        ),
      ),
        
       arrowshow? Positioned(
          top: 36 .h,
          right:right?? 9 .w,
          child: AddOneContainer(
              onTap:
                    onTap,
                   
            svgPath: Appimages.forward,
            width: 13 .w,
            height: 14 .h,
            height1: 46 .h,
            height2: 32.5 .h,
            width1: 46 .w,
            width2: 32.5 .w,
          ),
        ):SizedBox()
      ],
    );
  }
}
