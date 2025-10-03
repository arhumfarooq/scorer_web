
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color? color;
  final bool ishow;
  final String? image;
  final IconData? icon;
  final double? height;
  final double? width;
  final String? fontFamily;
  final double? imageHeight;
  final double? imageWidth;
  final double? radius;
  final double? fontSize;
  final VoidCallback?onTap;

  const LoginButton({
    super.key,
    required this.text,
    this.color,
    this.ishow = false,
    this.image,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.fontFamily,
    this.imageHeight,
    this.imageWidth,
    this.fontSize, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    
  

    Widget? leading;

    if (ishow) {
      if (icon != null) {
        
        leading = Icon(icon, size: (imageHeight ?? 24) .h, color: AppColors.whiteColor);
      } else if (image != null) {
        
        if (image!.endsWith(".svg")) {
          leading = SvgPicture.asset(
            image!,
            height: (imageHeight ?? 24) .h,
            width: (imageWidth ?? 24) .w,
            colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
          );
        } else {
          leading = Image.asset(
            image!,
            height: (imageHeight ?? 24) .h,
            width: (imageWidth ?? 24) .w,
          );
        }
      }
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (height ?? 74).h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((radius ?? 27) .r),
          color: color ?? AppColors.selectLangugaeColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading,
              SizedBox(width: 10 .w),
            ],
            Center(
              child: BoldText(
                fontFamily: fontFamily,
                text: text,
                selectionColor: AppColors.whiteColor,
                fontSize: (fontSize ?? 22).sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
