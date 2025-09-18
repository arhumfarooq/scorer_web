import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';
// import 'package:scorer/widgets/main_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class RoleSelectionContainer extends StatelessWidget {
  final bool isSelected;
  final String image;
  final String image2;
  final String text;
  final String text2;
  final double? height;
  final double? width;
  final VoidCallback onTap;

  const RoleSelectionContainer({
    super.key,
    required this.image,
    required this.image2,
    required this.text,
    required this.text2,
    required this.isSelected,
    this.height,
    this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 539.w,
        height: 291.h, // responsive height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r), // responsive radius
          border: Border.all(
            color: isSelected ? AppColors.forwardColor : AppColors.greyColor,
            width: 2.w, // responsive border width
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: height ?? 374.h,
              width: width ?? 249.w, // 40% of screen width
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    image2,
                    height: 59.h,
                    width: 59.w,
                  ),
                  BoldText(
                    text: text,
                    fontSize: 28.sp, // responsive font
                    selectionColor: AppColors.blueColor,
                  ),
                  MainText(
                    text: text2,
                    fontSize: 22.sp, // responsive font
                    height: 1.3,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
