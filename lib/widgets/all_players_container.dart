import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class AllPlayersContainer extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  final String? text3;
  final Color? color;
  final double? width;
  final double? fontSize;
  final double? fontSize2;
  final VoidCallback? onTap;

  const AllPlayersContainer({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
    this.fontSize,
    this.fontSize2,
    this.text3,
    this.color,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 110.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyColor,
            width: 1.7.w,
          ),
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    image,
                    width: 58.w,
                    height: 90.h,
                  ),
                  SizedBox(width: 13.w),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainText(
                          text: text,
                          fontSize: fontSize ?? 24.sp,
                          height: 1,
                        ),
                        MainText(
                          text: text2,
                          color: AppColors.teamColor,
                          fontSize: fontSize2 ?? 20.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              UseableContainer(
                // fontSize: 12.sp,
                text: text3 ?? "active".tr,
                // height: 22.h,
                // width: width ?? 65.w,
                color: color ?? AppColors.forwardColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
