
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';

class UseAbleGameRow extends StatelessWidget {
  final String text1;
  final String text2;
  const UseAbleGameRow({
    super.key, required this.text1, required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(Appimages.option),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainText(text: text1,fontSize: 20.sp,),
                MainText(text: text2,color: AppColors.teamColor,fontSize: 18.sp,height: 1,)
              ],
            )
          ],
        ),
        Icon(Icons.edit,color: AppColors.forwardColor,)
      ],
    );
  }
}