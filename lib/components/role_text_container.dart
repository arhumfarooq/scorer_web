

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';


class RoleTextContainer extends StatelessWidget {
  const RoleTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
 

    return Container(
      width: 188 .w,
      height: 82 .h,
      decoration: BoxDecoration(
        color: AppColors.forwardColor,
        borderRadius: BorderRadius.circular(80),
      ),
      child: Center(
        child: BoldText(
          text:"Role".tr,
          selectionColor: AppColors.whiteColor,
            fontSize: 54.sp
        ),
      ),
    );
  }
}
