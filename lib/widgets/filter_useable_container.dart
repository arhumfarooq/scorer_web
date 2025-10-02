import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart'; // Assuming MainText is a custom widget

class FilterUseableContainer extends StatelessWidget {
  final bool isSelected;
  final double?height;
  final String text;
  final VoidCallback onTap;
  final double? fontSze;

  const FilterUseableContainer({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
    this.fontSze, this.height,
  });

  @override
  Widget build(BuildContext context) {
    // All original manual scaling using MediaQuery and scaleFactor is removed.

    return GestureDetector(
      onTap: onTap,
      child: Container(
        // Dimensions scaled using .h and .w
        height:height?? 120.h, 
        width: double.infinity, 
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
          padding: EdgeInsets.symmetric(horizontal: 23.w), 
          child: Row(
            children: [
              Container(
                // Checkbox container dimensions scaled
                height: 30.h, 
                width: 30.w, 
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.forwardColor : AppColors.greyColor,
                    // Border width scaled (0 or 1.5.w)
                    width: isSelected ? 0 : 1.5.w, 
                  ),
                  shape: BoxShape.circle,
                  color: isSelected ? AppColors.forwardColor : Colors.transparent,
                ),
                child: isSelected
                    ? Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                        // Icon size scaled using .sp
                        size: 15.sp, 
                      )
                    : const SizedBox(),
              ),
              // Horizontal spacing scaled using .w
              SizedBox(width: 14.w), 
              MainText(
                text: text,
                // Optional font size scaled, falling back to 14.sp
                fontSize: fontSze ?? 24.sp, 
              )
            ],
          ),
        ),
      ),
    );
  }
}
