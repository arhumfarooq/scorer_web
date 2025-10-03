
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_session_Container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_time_row.dart';
import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
import 'package:scorer_web/components/facilitator_folder/phase_breakdown_container.dart';
import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/team_alpha_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

class EndSessionScreen extends StatelessWidget {
  const EndSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          
          children: [
             Positioned(
              top:700.h,
              right: 0,
              // left: 0,
              child: TeamAlphaContainer()),
            Column(
              children: [
                /// ✅ Fixed Appbar
                CustomAppbar(ishow: true),
                SizedBox(height: 56.h),
            
                /// ✅ Fixed Top Container
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r)
                    ),
                  color: AppColors.whiteColor,
            
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
                        child: CustomStackImage(),
                      ),
                   Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                         Center(
                        child: BoldText(
                          text: "Eranove Odyssey – Team A",
                          fontSize: 48.sp,
                          selectionColor: AppColors.blueColor,
                        ),
                      ),
                        Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  UseableContainer(
                                    text: "Phase 2",
                                    color: AppColors.orangeColor,
                                    fontFamily: "abz",
                                  ),
                                  SizedBox(width: 26.w),
                                  UseableContainer(
                                    text: "Active",
                                    fontFamily: "abz",
                                    color: AppColors.forwardColor,
                                  ),
                                ],
                              ),
            
                    ],
                   )
                    ],
                  ),
                ),
            
                /// ✅ Scrollable Area
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
            
            
                                Container(
                            height: 161.h ,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.greyColor,
                                width: 3.3.w ,
                              ),
                              borderRadius: BorderRadius.circular(52.r ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17 ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                    text: "export_by".tr,
                                    fontSize: 46 .sp,
                                  ),
                                  Row(
                                    children: [
                                      BoldText(
                                        text: "phase".tr,
                                        fontSize: 46.sp,
                                      ),
                                      SizedBox(width: 7 ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: AppColors.forwardColor,
                                        size: 40.sp ,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h,),
                              LoginButton(
                    // fontSize: 20.sp,
            
                            text: "export_pdf".tr,
                            ishow: true,
                            image: Appimages.export,
                            color: AppColors.selectLangugaeColor,
                            
                          ),
            
                          SizedBox(height: 20.h,),
                              SvgPicture.asset(
                            Appimages.Crown,
                            height: 296.h ,
                            width: 296.w ,
                          ),
                        
                         SizedBox(height: 21 .h),
                          BoldText(
                            text: "Eranove Odyssey – Team A",
                            fontSize: 40.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                             SizedBox(height: 10.h),
                          MainText(
                            text: "session_completed".tr,
                            fontSize: 28.sp,
                          ),
            
                          SizedBox(height: 30.h,),
                          CustomTimeRow(),
                                                SizedBox(height: 33 .h),
                          SvgPicture.asset(
                            Appimages.tropy,
                            height: 80 .h,
                            width: 80.w,
                          ),
                            SizedBox(height: 20 .h),
                          MainText(
                            text: "rewards_unlocked".tr,
                            fontSize: 28.sp,
                            fontFamily: "gotham",
                          ),
                          SizedBox(height: 16 .h),
                          BoldText(
                           text: "strategic_thinker".tr,
                            fontSize: 24.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                          SizedBox(height: 12 .h),
                          Image.asset(
                            Appimages.badge,
                            height: 200.h,
                            width: 200.w,
                          ),
                          SizedBox(height: 10 .h),
                          BoldText(
                            text: "badge".tr,
                            fontSize: 24.sp,
                            selectionColor: AppColors.blueColor,
                          ),
            
                          SizedBox(height: 30.h,),
                          CustomSessionContainer(),
                          SizedBox(height: 150.h,),
                          PlayersRow(isTeamSelected: false),
                          SizedBox(height: 40.h,),
                          PlayersContainers(
                          text1: "1",
                          text2: "Alex M.",
                          image: Appimages.facil2,
                          icon: Icons.keyboard_arrow_up_outlined,
                          iconColor: AppColors.arrowColor,
                          text4: "2,890 pts",
                          ishow: true,
                          containerColor: AppColors.yellowColor,
                                  leftPadding: 20.w
                
                        ),
                        SizedBox(height: 20.h,),
                        PlayersContainers(
                          text1: "2",
                          text2:  "Sarah J.",
                          image: Appimages.play2,
                          icon: Icons.keyboard_arrow_down_outlined,
                          iconColor: AppColors.brownColor,
                          text4: "2,890 pts",
                          ishow: true,
                          containerColor: AppColors.greyColor,
                               leftPadding: 20.w
                
                        ),
                        SizedBox(height: 20.h,),
                        PlayersContainers(
                          text1: "3",
                          text2: "Mike C.",
                          image: Appimages.play5,
                          icon: Icons.keyboard_arrow_down_outlined,
                          iconColor: AppColors.brownColor,
                          text4: "2,180 pts",
                          ishow: true,
                          containerColor: AppColors.orangeColor,
                                  leftPadding: 20.w
                
                        ),
                        SizedBox(height: 50.h,),
                          CreateContainer(
                          fontsize2: 20.sp,
                            arrowW: 30.w,
                            arrowh: 30.h,
                            height: 57.h,
                            top: -20.h,
                            right: 20.w,
                                              borderW: 1.7.w,
            
                           text: "view_full_ranking".tr,
                           
                            width: 270.w,
                          ),
                          SizedBox(height: 50.h,),
                          PhaseBreakDownContainer(),
                          SizedBox(height: 30.h,),
                           LoginButton(
                            onTap: () {
              // Get.toNamed(RouteName.createNewSessionScreen);
            },
                            text: "create_new_session".tr,
                            ishow: true,
                            // fontSize: 19.sp,
            
                            color: AppColors.redColor,
                            icon: Icons.add,
                            imageHeight: 50 .h,
                            imageWidth: 50.w,
                          ),
                          SizedBox(height: 20.h),
                          LoginButton(
                            // fontSize: 19.sp,
                            text: "share_results".tr,
                            color: AppColors.forwardColor,
                            image: Appimages.move,
                            ishow: true,
                            
                          ),
            
                                // SizedBox(height: 20.h),
                      
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
