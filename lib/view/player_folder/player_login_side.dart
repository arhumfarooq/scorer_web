import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';


class PlayerLoginSide extends StatelessWidget {


  PlayerLoginSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppbar(ishow4: true),
              SizedBox(height: 56.h),

              /// Top fixed container
              Container(
                width: 794.w,
                height: 235.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                  color: AppColors.whiteColor,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(
                        image: Appimages.player2,
                        text: "Player",
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: BoldText(
                            text: "Player Nickname",
                            fontSize: 48.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                        ),
                      
                      ],
                    ),
                  ],
                ),
              ),

         
               Expanded(
              child: Container(
                width: 794.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
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
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 36.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                       LoginTextfield(text: "Enter Nick Name",height: 120.h,fontsize: 35.sp,),
                        SizedBox(height: 20.h,),
                        LoginTextfield(text: "Enter Team Nick Name",height: 120.h,fontsize: 35.sp,),
                        SizedBox(height: 30.h,),
                        LoginButton(text: "Continue",color: AppColors.forwardColor,),
                


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
