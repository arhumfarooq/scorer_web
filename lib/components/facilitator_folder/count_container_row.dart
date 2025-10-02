import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart'; // Assuming this is a custom Text widget

class CountContainerRow extends StatelessWidget {
  const CountContainerRow({
    super.key,
    // Removed the 'scaleFactor' field as it's no longer needed
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // --- Decrement Container ---
        Expanded(
          child: Container(
            // Height scaled using .h
            height: 200.h,
            decoration: BoxDecoration(
              // Border width scaled using .w
              border: Border.all(color: AppColors.minus2, width: 1.5.w),
              // Border radius scaled using .r
              borderRadius: BorderRadius.circular(35.r),
            ),
            child: Center(
              child: Container(
                // Inner container width/height scaled using .w and .h
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  // Border radius scaled using .r
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.minus,
                ),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: AppColors.whiteColor,
                    // Icon size scaled using .sp
                    size: 30.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
        
        // --- Count Display ---
        Expanded(
          child: SizedBox(
            // Height scaled using .h
            height: 116.h,
            child: Center(
              child: BoldText(
                text: "03",
                // Font size scaled using .sp
                fontSize: 50.sp,
                selectionColor: AppColors.blueColor,
              ),
            ),
          ),
        ),
        
        // --- Increment Container ---
        Expanded(
          child: Container(
            // Height scaled using .h
            height: 200.h,
            decoration: BoxDecoration(
              color: AppColors.forwardColor,
              // Border radius scaled using .r
              borderRadius: BorderRadius.circular(35.r),
            ),
            child: Center(
              child: Container(
                // Inner container width/height scaled using .w and .h
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  // Border radius scaled using .r
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.forwardColor,
                    // Icon size scaled using .sp
                    size: 30.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
