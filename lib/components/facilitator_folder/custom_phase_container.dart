import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart'; // Assuming BoldText is a custom widget

class CustomPhaseContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final double? fontSize;
  final Color? color;

  const CustomPhaseContainer({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    // All original manual scaling using scaleFactor is removed.

    return Container(
      // Width scaled using .w and height scaled using .h
      width: double.infinity, 
      height: 120.h, 
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          // Border width scaled using .w
          width: 1.5.w, 
        ),
        // Border radius scaled using .r
        borderRadius: BorderRadius.circular(24.r), 
      ),
      child: Padding(
        // Horizontal padding scaled using .w
        padding: EdgeInsets.symmetric(horizontal: 19.w), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BoldText(
              text: text1,
              // Font size scaled using .sp
              fontSize: 24.sp, 
            ),
            BoldText(
              text: text2,
              // Optional font size scaled, falling back to 18.sp
              fontSize: fontSize ?? 24.sp, 
              selectionColor: color,
            )
          ],
        ),
      ),
    );
  }
}
