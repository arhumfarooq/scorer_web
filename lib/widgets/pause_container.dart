
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/main_text.dart';

class PauseContainer extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String? svgPath;
  final String text;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final double?fontSize;

  const PauseContainer({
    super.key,
    this.color,
    this.icon,
    this.svgPath,
    this.text = "",
    this.height,
    this.width,
    this.onTap, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    
   
    return GestureDetector(
      onTap: onTap,
      child: Container(
      height: (height ?? 94).h,

        width: (width ?? 287).w,
        decoration: BoxDecoration(
          color: color ?? AppColors.selectLangugaeColor,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPath != null) ...[
              SvgPicture.asset(
                svgPath!,
                height: 16 .h,
                width: 16 .w,
                color: AppColors.whiteColor,
              ),
              SizedBox(width: 8 .w),
            ] else if (icon != null) ...[
              Icon(
                icon,
                color: AppColors.whiteColor,
                size: 30.sp,
              ),
              SizedBox(width: 5 .w),
            ],
            MainText(
              text: text,
              color: AppColors.whiteColor,
              fontSize:fontSize?? 28.sp,
            ),
          ],
        ),
      ),
    );
  }
}
