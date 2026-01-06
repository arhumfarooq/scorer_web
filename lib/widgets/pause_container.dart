
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
  final double? imageH;
  final double? imageW;

  const PauseContainer({
    super.key,
    this.color,
    this.icon,
    this.svgPath,
    this.text = "",
    this.height,
    this.width,
    this.onTap, this.fontSize, this.imageH, this.imageW,
  });

  @override
  Widget build(BuildContext context) {
    
   
    return MouseRegion(
        cursor: SystemMouseCursors.click, //
      child: GestureDetector(
        onTap: onTap,
        child: Container(
        height: (height ?? 80).h,
      
          width: (width ?? 287).w,
          decoration: BoxDecoration(
            color: color ?? AppColors.selectLangugaeColor,
            borderRadius: BorderRadius.circular(28.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (svgPath != null) ...[
                SvgPicture.asset(
                  svgPath!,
                  height:imageH?? 16 .h,
                  width: imageW??16 .w,
                  color: AppColors.whiteColor,
                ),
                SizedBox(width: 8 .w),
              ] else if (icon != null) ...[
                Icon(
                  icon,
                  color: AppColors.whiteColor,
                  size: 40.sp,
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
      ),
    );
  }
}
