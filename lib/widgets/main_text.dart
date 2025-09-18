 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer/constants/appcolors.dart';

class MainText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final TextAlign? textAlign;
  final Color? color;
  final double? height;
  final String? fontFamily;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  const MainText({super.key, required this.text, this.fontSize, this.textAlign, this.height, this.color, this.fontFamily, this.onTap, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text,style: TextStyle(
                    fontFamily:fontFamily?? "refsan",
                    fontWeight:fontWeight?? FontWeight.w400,
                    color:color?? AppColors.languageColor,
                    fontSize:fontSize?? 18.sp,
                    letterSpacing: -0.1,
                    height:height?? 2.0.h,
                    
                  
                  ),
                  textAlign: textAlign,
                   softWrap: true,          // ensures text wraps to next line
        overflow: TextOverflow.visible, 
        maxLines: null,
                  ),
    );
  }
}
