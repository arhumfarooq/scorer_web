import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart'; // Still needed for .tr (translation)
// import 'package:scorer/components/responsive_fonts.dart'; // No longer needed

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/filter_useable_container.dart'; // Assuming this is the refactored version

class AdditionalSettingColumn extends StatelessWidget {
  const AdditionalSettingColumn({
    super.key,
    // Removed scaleFactor and widthScaleFactor fields
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title text size scaled using .sp
        BoldText(
          text: "additional_settings".tr,
          selectionColor: AppColors.blueColor,
          fontSize: 30.sp,
        ),
        
        // Vertical spacing scaled using .h
        SizedBox(height: 20.h),
        
        // Filter Option 1
        FilterUseableContainer(
          // Passing the design font size (14.0) to the container. 
          // Assuming the refactored FilterUseableContainer uses .sp internally 
          // (i.e., fontSze: 14.0.sp) to handle the scaling.
          // Note: If you need the 12/14 small/default logic, that should be
          // placed inside FilterUseableContainer using a conditional check 
          // on ScreenUtil.screenWidth or similar.
          fontSze: 14.0, 
          isSelected: true,
          text: 'allow_late_joiners'.tr,
          onTap: () {},
        ),
        
        // Vertical spacing scaled using .h
        SizedBox(height: 10.h),
        
        // Filter Option 2
        FilterUseableContainer(
          fontSze: 14.0,
          isSelected: false,
          text: 'send_email_invitations'.tr,
          onTap: () {},
        ),
        
        // Vertical spacing scaled using .h
        SizedBox(height: 10.h),
        
        // Filter Option 3
        FilterUseableContainer(
          fontSze: 14.0,
          isSelected: false,
          text: 'record_session_review'.tr,
          onTap: () {},
        ),
      ],
    );
  }
}
