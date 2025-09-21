import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';

class FacilitatorDashboard extends StatelessWidget {
  const FacilitatorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(child: SafeArea(child: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity.w,
            height: 187.h,
            color: AppColors.whiteColor,
            child: Padding(
              padding: EdgeInsets.only(left: 175.w,right: 127.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Appimages.splash,width: 136.w,height: 118.h,),
                    Row(
                              children: [
                                SettingContainer(icons: Icons.settings),
                                SizedBox(width: 6 .w),
                                SettingContainer(
                                  icons: Icons.notifications,
                                  ishow: true,
                                ),
                                SizedBox(width: 6.w),
                                AddOneContainer(icon: Icons.add,onTap: () {
                                  // Get.toNamed(RouteName.createNewSessionScreen);
                                },),
                              ],
                            ),
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 56.h,),
        
          Container(
            height: 1050.h,
            width: 794.w,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
         borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r)
         )
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
  Positioned(
    top: -140,
    right: 312.w,
    left: 312.w,
    child: CustomStackImage(),
  ),

  Column(
    children: [
      SizedBox(height: 48.h,),
      Center(child: BoldText(text: "Welcome back, Adam!",fontSize: 48.sp,selectionColor: AppColors.blueColor,)),
      Center(child: MainText(
        fontSize: 22.sp,textAlign: TextAlign.center,
        text: "You’ve just entered a company in crisis. Every\ndecision you make could change its future."),)
    ],
  )
              ],
            ),
          )
        
        ],),
      ))),
    );
  }
}
