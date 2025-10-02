import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class SessionUseableRow extends StatelessWidget {
  final String iamge;
  final String text;
  final String text2;
  final String tex3;
  final String tex4;
  final double?fontSize;
  final double?fontsize2;


  const SessionUseableRow({super.key, required this.iamge, required this.text, required this.text2, required this.tex3, required this.tex4, this.fontSize, this.fontsize2});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                      children: [
                        SvgPicture.asset(iamge),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            BoldText(text: text,fontSize: 24.sp,selectionColor: AppColors.blueColor,),
                            MainText(text: text2,fontSize:fontsize2?? 20.sp,color: AppColors.teamColor,height: 1,)
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        BoldText(text: tex3,fontSize: 24.sp,selectionColor: AppColors.orangeColor,),
                        MainText(text: tex4,fontSize:fontSize?? 20.sp,color: AppColors.teamColor,height: 1,)
            
                      ],
                    )
                 ],
               );
  }
}