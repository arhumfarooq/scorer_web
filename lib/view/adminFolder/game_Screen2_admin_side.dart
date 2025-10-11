
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/custom_container.dart';
import 'package:scorer_web/components/admin_folder.dart/default_time_container.dart';
import 'package:scorer_web/components/admin_folder.dart/game_Setup_logic_container.dart';
import 'package:scorer_web/components/facilitator_folder/additional_setting_column.dart';
import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
import 'package:scorer_web/components/facilitator_folder/count_container_row.dart';
import 'package:scorer_web/components/facilitator_folder/custom_phase_container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_session_Container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_time_row.dart';
import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
import 'package:scorer_web/components/facilitator_folder/phase_breakdown_container.dart';
import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/filter_useable_container.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/game_select_useable_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

class GameScreen2AdminSide extends StatelessWidget {
  final bool isSelected;

  const GameScreen2AdminSide({super.key,this.isSelected = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            /// ✅ Fixed Appbar
            CustomAppbar(ishow: true,ishow3: true,),
            SizedBox(height: 56.h),

            /// ✅ Fixed Top Container
            GradientColor(
              height: 180.h,
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
                      top: 50.h,
                      left: -40.w,
                      child: ForwardButtonContainer(
                        onTap: () => Get.back(),
                        imageH: 20.h,
                        imageW: 23.5.w,
                        height1: 90.h,
                        height2: 65.h,
                        width1: 90.w,
                        width2: 65.w,
                        image: Appimages.arrowback,
                      ),
                    ),
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(
                        image: Appimages.prince2,
                        text: "Administrator",
                      ),
                    ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Center(
                       child: RichText(
                                              text: TextSpan(
                                                style:  TextStyle(
                                                 
                                                 
                                            
                                                fontWeight: FontWeight.bold),
                                                children: [
                       TextSpan(
                        text: "Add Ne".tr,   
                        
                        style: TextStyle(
                          fontSize: 48.sp,
                          color: AppColors.blueColor, 
                        ),
                                                  ),
                                                  WidgetSpan(
                        alignment: PlaceholderAlignment.middle, 
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 14.h),
                          child: Container(
                            
                            decoration: BoxDecoration(
                              color: Color(0xff8DC046),
                              borderRadius: const BorderRadius.only(
                                           topLeft: Radius.circular(30),
                                           bottomLeft: Radius.circular(30),
                              ),
                            ),
                            child:  Text(
                             "w".tr,    
                              style: TextStyle(
                                                        fontSize: 48.sp,
                                           color: AppColors.blueColor, 
                                         
                                           fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                                                  ),
                                                  WidgetSpan(
                        alignment: PlaceholderAlignment.middle, 
                        child: Padding(
                          // padding: EdgeInsets.all(8.0),\
                          padding: EdgeInsets.only(bottom: 14.h),
              
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.forwardColor,
                              borderRadius: const BorderRadius.only(
                                           topRight: Radius.circular(30),
                                           bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 4.0, right: 10.0),
                              child:  Text(
                                            "Game".tr,
                                           style: TextStyle(
                                             color: Colors.white,
                                                                    fontSize: 48.sp,
                                             fontWeight: FontWeight.bold,
                                           ),
                              ),
                            ),
                          ),
                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                     ),
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
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 36.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                SizedBox(
                  height: 390.h,
                  width: 390.w,
                  child: Image.asset(Appimages.game, fit: BoxFit.contain, ),
                
                ),
                
                  SizedBox(height: 30.h,),
                    LoginTextfield(
                        text: "enter_game_name".tr, fontsize: 42.sp,height: 130.h,),
                    SizedBox(height: 10.h),
                    LoginTextfield(
                      ishow: true,
                        text: "description".tr,
                        height: 200.h,
                        fontsize: 42.sp),
                    SizedBox(height: 40.h),
                       BoldText(
                      text:"number_of_phases".tr,
                      fontSize: 30.sp,
                      selectionColor: AppColors.blueColor,
                    ),
                    SizedBox(height: 25.h),
                    MainText(
                      text: "phase_structure_adapts".tr,
                      color: AppColors.teamColor,
                      textAlign: TextAlign.center,
                      height: 1.4,
                      fontSize: 24.sp,
                    ),
                    SizedBox(height: 30.h,),
                    CountContainerRow(),
                    SizedBox(height: 40.h,),
                    GameLogicSetupContainer(),
                       SizedBox(height: 20.h,),
                    LoginButton(
                   
                      text: "add_phase".tr,
                      ishow: true,
                      icon: Icons.add,
                      // imageHeight: 26 * scaleFactor,
                      // imageWidth: 26 * scaleFactor,
                    ),
                    SizedBox(height: 34 .h),
                    BoldText(
                     text: "challenge_types".tr,
                      selectionColor: AppColors.blueColor,
                     
                    ),
                
                     SizedBox(height: 25 .h),
                    FilterUseableContainer(
                  
                  isSelected: true, text: "mcq".tr, onTap: () {}),
                        SizedBox(height: 10 .h),
                FilterUseableContainer(isSelected: false, text: "open_ended".tr, onTap: () {}),
                        SizedBox(height: 10 .h),
                FilterUseableContainer(isSelected: true, text: "puzzle".tr, onTap: () {}),
                        SizedBox(height: 10 .h),
                FilterUseableContainer(isSelected: false, text: "simulation".tr, onTap: () {}),
                    SizedBox(height: 10 .h),
                    CustomContainer(),
                    SizedBox(height: 20.h,),
                    DefaultTimeContainer(),
                    SizedBox(height: 40.h,),
                        Center(
                      child: BoldText(
                        text: "badge_labeling".tr,
                        fontSize: 30.sp,
                        selectionColor: AppColors.blueColor,
                      ),
                    ),
                    SizedBox(height: 16 .h),
                    Center(
                      child: Image.asset(Appimages.badge,
                          width: 200.w, height: 200.h),
                    ),
                    SizedBox(height: 11 .h),
                    CustomPhaseContainer(
                      text1: "badge_name".tr,
                
                      text2:  "gold_achiever".tr,
                      // fontSize: .sp,
                      color: AppColors.forwardColor,
                    ),
                    SizedBox(height: 10.h),
                    CustomPhaseContainer(
                      text1:"required_score".tr,
                      text2: "90+",
                      // fontSize: 16 .sp,
                      color: AppColors.forwardColor,
                    ),
                      SizedBox(height: 16 .h),
                    LoginButton(
                      text: "add_more_badges".tr,
                   
                      color: AppColors.forwardColor,
                     
                      fontFamily: "refsan",
                    ),
                    SizedBox(height: 18 .h),
                    BoldText(
                      text:  "additional_settings".tr,
                      selectionColor: AppColors.blueColor,
                      fontSize: 30.sp,
                    ),
                
                     SizedBox(height: 20 .h),
                    FilterUseableContainer(
                        isSelected: true, text: 'manual'.tr,
                 onTap: () {}),
                    SizedBox(height: 10 .h),
                    FilterUseableContainer(isSelected: false, text: 'ai'.tr, onTap: () {}),
                                  SizedBox(height: 10 .h),
                
                    FilterUseableContainer(
                        isSelected: false, text:  'mixed'.tr, onTap: () {}),
                               SizedBox(height: 10 .h),
                
                    CustomContainer(
                 
                      text1: "points_per_correct_answer".tr,
                      text2: "10pts",
                      color: AppColors.forwardColor,
                    ),
                                  SizedBox(height: 10 .h),
                
                    CustomContainer(
                 
                      text1:  "penalty_for_wrong_answers".tr,
                      text2: "-5pts",
                      color: AppColors.redColor,
                    ),
                
                        SizedBox(height: 40 .h),
                
                    GameRow(
                      fontsize: 20.sp,
                
                       ),
                    SizedBox(height: 10 .h),
                    GameRow(
                      fontsize: 20.sp,
                        text: "allow_team_mode".tr,
                     ),
                    SizedBox(height: 10 .h),
                    GameRow(
                      fontsize: 20.sp,
                
                        text: "auto_start_sessions".tr,
                      ),
                    SizedBox(height: 43 .h),
                    LoginButton(
                      // fontSize: 20.sp,
                        text: "save".tr,
                        ishow: true,
                        image: Appimages.save,
                        ),
                    SizedBox(height: 10 .h),
                    LoginButton(
                      // fontSize: 20.sp
                      // ,
                        text: "cancel".tr,
                        color: AppColors.forwardColor,
                        ),
                    SizedBox(height: 43 .h),
                   
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
      ),
    );
  }
}
