
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer/constants/appcolors.dart';

class SettingContainer extends StatelessWidget {
  final bool ishow;
  final IconData icons;
  const SettingContainer({super.key, this.ishow = false, required this.icons});

  @override
  Widget build(BuildContext context) {
    
  

    return Stack(
      children: [
        Container(
          height: 86.31.h,
          width: 86.31.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.settingColor.withOpacity(0.8),
          ),
          child: Icon(
            icons,
            color: AppColors.forwardColor,
            size: 40.sp,
          ),
        ),
        ishow
            ? Positioned(
                top: 0.1,
                right: -0.1,
                child: Container(
                  height: 23.h ,
                  width: 23.w,
                  decoration: BoxDecoration(
                    color: AppColors.selectLangugaeColor,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
