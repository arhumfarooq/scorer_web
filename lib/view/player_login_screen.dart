import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';

class PlayerLoginScreen extends StatelessWidget {
  const PlayerLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientBackground(child: SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 50.h,),
Padding(
  padding: EdgeInsets.only(left: 50.w,top: 50.h),
  child: InkWell(
    onTap: () => Get.back(),
    child: ForwardButtonContainer(image: Appimages.arrowback,)),
),


Padding(
  padding:  EdgeInsets.only(left: 60.w,right: 159.w),
  child: Center(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
             
              Image.asset(
                                 Appimages.player2,
                                  width: 472.w,
               height: 641.h,
                                 // height: 180 ,
                               ),
                                Positioned(
                right: -80,
                top: 180,
                child: CreateContainer(
                  width: 299.w,
                  text: "Player Login",fontsize2: 30.sp,)),
            ],
          ),
        ),
    
        Container(
          width: 686.w,
          height: 490.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            color: AppColors.whiteColor
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 32.w,vertical: 32.h),
            child: Column(
              children: [
                LoginTextfield(text:"enter_full_name".tr,),
                SizedBox(height: 9.h,),
                 LoginTextfield(text:  "enter_email".tr,),
                SizedBox(height: 9.h,),
                 LoginTextfield(text:  "enter_password".tr,),
                SizedBox(height: 20.h,),
                 Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 37.h,
                                    width: 37.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColors.rememberColor,
                                        width: 1 .w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 6 .w),
                                  MainText(
                                    text: "remember_me".tr,
                                    
                                      fontSize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 18.sp,
    smallSize: 11.sp,
    
                                    ),
    
                                    color: AppColors.languageTextColor,
                                  ),
                                ],
                              ),
                              MainText(
                                text: "forget_password".tr,
                                fontFamily: "gotham",
                                 fontSize: ResponsiveFont.getFontSizeCustom(
    defaultSize: 20.sp,
    smallSize: 11.sp,
    
                                    ),
                                color: AppColors.selectLangugaeColor,
                              ),
                            ],
                          ),
                          SizedBox(height: 49.h,),
    
                            LoginButton(
                            text: "login".tr,
                            fontSize: 20,
                            onTap: () {

                              Get.toNamed(RouteName.bottomNavigation);
                            },
                          ),
    
              ],
            ),
          ),
        )
      ],
    ),
  ),
),
Spacer(),
 Padding(
   padding: EdgeInsets.only(left: 50.w),
   child: SizedBox(
     width: 136.w,
     height: 118.h,
     child: SvgPicture.asset(Appimages.splash),
   ),
 ),



      ],
    ))),);
  }
}