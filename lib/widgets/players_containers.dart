import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class PlayersContainers extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;
  final Color? color;
  final String? text3;
  final double? width1;
  final IconData? icon;
  final String? text4;
  final Color? iconColor;
  final Color? containerColor;
  final bool ishow;
  final double? imageheight;
  final double? imageWidth;
  final double? leftPadding;

  const PlayersContainers({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
    this.color,
    this.text3,
    this.width1,
    this.icon,
    this.text4,
    this.containerColor,
    this.iconColor,
    this.ishow = false,
    this.imageheight,
    this.imageWidth,
    this.leftPadding,
  });

  @override
  Widget build(BuildContext context) {
    // All dimensions are now based on flutter_screenutil
    return Container(
      // width: 330.w,
      width: double.infinity,
      height: 85.h,
      decoration: BoxDecoration(
        color: containerColor ?? AppColors.playerColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: leftPadding ?? 30.w,
          right: 30.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (ishow)
                  Icon(
                    icon,
                    color: iconColor ?? AppColors.forwardColor,
                    size: 40  .w,
                  ),
                if (ishow) SizedBox(width: 7.w),
                BoldText(
                  text: text1,
                  selectionColor: AppColors.blueColor,
                  fontSize: 15.sp,
                ),
                SizedBox(width: 17.w),
                Image.asset(
                  image,
                  height: imageheight ?? 60.w,
                  width: imageWidth ?? 60  .w,
                ),
                SizedBox(width: 7.w),
                MainText(
                  text: text2,
                  fontSize: 13.sp,
                ),
              ],
            ),
            if (ishow)
              BoldText(
                text: text4 ?? "",
                fontSize: 24.sp,
                selectionColor: AppColors.blueColor,
              )
            else
              Flexible(
                child: UseableContainer(
                  fontSize: 18.sp,
                  text: text3 ?? "submitted".tr,
                  // width: width1 ?? 76.w,
                  color: color ?? AppColors.forwardColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
