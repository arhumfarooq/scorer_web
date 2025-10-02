
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/create_container.dart';
// import 'package:scorer/constants/appcolors.dart';

class AddOneContainer extends StatelessWidget {
  final IconData? icon;
  final String? svgPath;
  final double? height;
  final double? width;
  final double? height1;
  final double? width1;
  final double? height2;
  final double? width2;
  final VoidCallback?onTap;
  final bool isShow;


  const AddOneContainer({
    super.key,
    this.icon,
    this.svgPath,
    this.height,
    this.width,
    this.height1,
    this.width1,
    this.height2,
    this.width2, this.onTap, this.isShow=false
    ,
  });

  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: onTap,
      child: Stack(
          clipBehavior: Clip.none,
                                      // CreateContainer(text: "Add",height: 61.h,width: 102.w,borderW: 1.97.w,arrowW: 33.w,arrowh: 40.h,)

        children: [
      Positioned(
            bottom: -60.h,
            child: 
                                    isShow?      CreateContainer(
                                        top: -28.h,
                                        right: -50.w,
                                        text: "Add",height: 61.h,width: 102.w,borderW: 1.97.w,arrowW: 33.w,arrowh: 40.h,):SizedBox()
          // 
          ),
          Container(
            // clipBehavior: Clip.none,
            height: (height1 ?? 86.31).h,
            width: (width1 ?? 86.31) .w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.plusColor,
            ),
            child: Center(
              child: Container(
                height: (height2 ?? 59) .h,
                width: (width2 ?? 59) .w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.forwardColor,
                ),
                child: Center(
                  child: svgPath != null
                      ? SvgPicture.asset(
                          svgPath!,
                          colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
                          height: (height ?? 29) .h,
                          width: (width ?? 29) .w,
                        )
                      : icon != null
                          ? Icon(
                              icon,
                              color: AppColors.whiteColor,
                              size: (height ?? 24) .h,
                            )
                          : const SizedBox(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
