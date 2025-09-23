
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';

class UseableContainer extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? width;
  final Color? textColor;
  final String? fontFamily;
  final double? fontSize;

  const UseableContainer({
    super.key,
    this.color,
    required this.text,
    this.height,
    this.width,
    this.textColor,
    this.fontFamily,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    
   
    return Container(
      width: (width ?? 129.w) .w,
      height: (height ?? 42.h) .h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80 .r),
        color: color,
      ),
      child: Center(
        child: MainText(
          text: text,
          fontFamily: fontFamily ?? "abz",
          fontSize: (fontSize ?? 18) .sp,
          color: textColor ?? AppColors.whiteColor,
        ),
      ),
    );
  }
}



