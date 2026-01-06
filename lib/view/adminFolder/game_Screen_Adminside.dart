
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/game_useable_container.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';

import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/bold_text.dart';

import 'package:scorer_web/widgets/custom_stack_image.dart';

import 'package:scorer_web/widgets/main_text.dart';


class GameScreenAdminside extends StatelessWidget {
  const GameScreenAdminside({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
             child: Column(
              children: [
                 GradientColor(
                height: 200.h,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r)
                    ),
                  // color: AppColors.whiteColor,
                
                  ),
                  // color: AppColors.whiteColor,
                  width: 794.w,
                  height: 235.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                    
                      Positioned(
                        top: -140,
                        right: 312.w,
                        left: 312.w,
                        child: CustomStackImage(
                          image: Appimages.prince2,
                          text: "administrator".tr,
                        ),
                      ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                         Center(
                        child: BoldText(
                          text: "game_format_management".tr,
                          fontSize: 48.sp,
                          selectionColor: AppColors.blueColor,
                        ),
                      ),
                       MainText(
                         text: "format_description".tr,
  fontSize: 22.sp,
                        // text: "Each of these formats has its own logic, flow,\nand evaluation methods.",fontSize: 22.sp,
                       textAlign: TextAlign.center,
                       )
                
                    ],
                   )
                    ],
                  ),
                ),
              ),
             
              /// ✅ Scrollable Area
              Expanded(
                child: GradientColor(
                  ishow: false,
                  child: Container(
                    width: 794.w,
                    decoration: BoxDecoration(
                      // color: AppColors.whiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.r),
                        bottomRight: Radius.circular(40.r)
                      ),
                    ),
                    child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                      scrollbars: false, // ✅ ye side wali scrollbar hatayega
                    ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 70.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GameUseAbleContainer(),
                              SizedBox(height: 25.h,),
                               GameUseAbleContainer(),
                              SizedBox(height: 25.h,), GameUseAbleContainer(),
                              SizedBox(height: 25.h,), GameUseAbleContainer(),
                              SizedBox(height: 25.h,),
                          
                             
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ],
             ),
           );
  }
}