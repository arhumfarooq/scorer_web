
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';

class CustomContainer extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Color? color;
  // final double scaleFactor;

  const CustomContainer({
    super.key,
    this.text1,
    this.text2,
    this.color,
    // required this.scaleFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100 .h,
      width: double.infinity,
      decoration: BoxDecoration(
        border:
            Border.all(color: AppColors.greyColor, width: 1.5 .w),
        borderRadius: BorderRadius.circular(24.r ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23 .w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainText(
              text: text1 ?? "Default Time Limit per Phase",
              fontSize: 20.sp,
              color: AppColors.teamColor,
            ),
            MainText(
              text: text2 ?? "20m",
              fontSize: 20.sp,
              color: color ?? AppColors.teamColor,
            )
          ],
        ),
      ),
    );
  }
}