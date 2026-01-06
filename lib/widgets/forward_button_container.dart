
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';

class ForwardButtonContainer extends StatelessWidget {
  final String? image;
  final double? height1;
  final double? height2;
  final double? width1;
  final double? width2;
  final double?imageH;
  final double?imageW;
  final VoidCallback? onTap;

  const ForwardButtonContainer({
    super.key,
    this.image,
    this.height1,
    this.height2,
    this.width1,
    this.width2, this.onTap, this.imageH, this.imageW,
  });

  @override
  Widget build(BuildContext context) {
    

    return MouseRegion(
       cursor: SystemMouseCursors.click, //
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height1 ?? 62.h,
          width: width1 ?? 62.w,
          decoration: BoxDecoration(
            color: AppColors.forwardColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: height2 ?? 44.h,
              width: width2 ?? 44.w,
              decoration: const BoxDecoration(
                color: AppColors.forwardColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  image ?? Appimages.forward,
                  width:imageW?? 12.w,
                  height:imageH?? 14.h,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}