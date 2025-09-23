import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
class EngagementContainer extends StatelessWidget {
  const EngagementContainer({
    super.key,
  
  });



  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
             height: 224.h,
          width: 258.w,
          Appimages.group,
        
        ),
        SizedBox(width: 3 .w),
        Flexible(
          child: Container(
            width: 482.w,
            height: 230.h,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyColor, width: 1.5),
              borderRadius: BorderRadius.circular(46.r),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                
                left: 42 .w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      BoldText(
                        text: "12",
                        selectionColor: AppColors.forwardColor,
                        fontSize: 46 .sp,
                      ),
                      SizedBox(width: 8 .w),
                      Container(
                        width: 120.w,
                        height: 2,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      SizedBox(width: 6 .w),
                    
    Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: BoldText(
    text: "Active Players".tr,
    selectionColor: AppColors.blueColor,
    fontSize: 30 .sp,
        ),
      ),
    ),
        
                    ],
                  ),
                  SizedBox(height: 10 .h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BoldText(
                        text: "89%",
                        selectionColor: AppColors.forwardColor,
                        fontSize: 46.sp,
                      ),
                      SizedBox(width: 6 .w),
                      Container(
                        width: 95.w,
                        height: 2,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      SizedBox(width: 5 .w),
                     Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: BoldText(
    text: "Engagement".tr,
    selectionColor: AppColors.blueColor,
    fontSize: 30 .sp,
        ),
      ),
    ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
     
      ],
    );
  }
}
