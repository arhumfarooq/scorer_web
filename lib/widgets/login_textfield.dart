
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scorer/constants/appcolors.dart';
import 'package:scorer_web/constants/appcolors.dart';

class LoginTextfield extends StatelessWidget {
  final double? fontsize;
  final String text;
  final double? height;
  final bool ishow;
  
  const LoginTextfield({super.key, required this.text, this.fontsize, this.height,  this.ishow=false});

  @override
  Widget build(BuildContext context) {
    
 
    return Container(
      height:height?? 74 .h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26 .r),
        border: Border.all(color: AppColors.selectLangugaeColor.withOpacity(0.1), width: 2 .w),
      ),
      child: ishow?TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10 .w),
          hintText: text,
          
          hintStyle: TextStyle(
            fontFamily: "giory",
            fontSize:fontsize?? 21 .sp,
            color: AppColors.languageTextColor,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ):Center(
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10 .w),
            hintText: text,
            
            hintStyle: TextStyle(
              fontFamily: "giory",
              fontSize:fontsize?? 22 .sp,
              color: AppColors.languageTextColor,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
