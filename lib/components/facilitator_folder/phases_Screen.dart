import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer_web/components/facilitator_folder/phases_container.dart';
import 'package:scorer_web/components/facilitator_folder/real_time_monitor_Container.dart';
import 'package:scorer_web/components/facilitator_folder/stages_row.dart';
import 'package:scorer_web/components/facilitator_folder/team_progress_container.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_stratgy_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/pause_container.dart';

class PhasesScreen extends StatelessWidget {
  final StageController controller = Get.put(StageController());

   PhasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      SizedBox(height: 50.h,),
        Center(
      child: CreateContainer(
                      text: "Current Phase", fontsize2: 31.sp,width: 260.w,height: 70.h,borderW: 1.97.w,
                      arrowW: 33.w,arrowh: 40.h,top:-30.h ,right: -10.w,
                      
                      ),
                      
        ),
        SizedBox(height: 27.h,),
      Center(
                  child: CircularPercentIndicator(
               radius:  120.r,
                    lineWidth: 5.0, 
                    percent: 0.7, 
                    animation: true,
                    animationDuration: 500,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.transparent,
                    progressColor: AppColors.forwardColor,
                    center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               BoldText(
                    text: "12:32",
                    fontSize: ResponsiveFont.getFontSizeCustom(
                      defaultSize: 40.sp,
      smallSize: 18
                    ),
                    selectionColor: AppColors.blueColor),
                MainText(
                    text: "remaining".tr,
        fontSize: ResponsiveFont.getFontSizeCustom(
                      defaultSize: 28.sp,
      smallSize: 12
                    ),
                    height: 1),
            ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
      
                PhaseContainer(),
                SizedBox(height: 6.h,),
      
                   Center(
                     child: Icon(Icons.arrow_downward_sharp,
                      color: AppColors.forwardColor, size: 41.sp),
                   ),
                    StagesRow(),
                    SizedBox(height: 20.h,),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 50.w),
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Obx(() {
                                 return  LinearProgressIndicator(
  value:controller.isCompleted.value?1.0: 0.4, // 👈 required (0.0 = empty, 1.0 = full)
  minHeight: 8.h,
  color: AppColors.selectLangugaeColor,
  backgroundColor: AppColors.greyColor,
  borderRadius: BorderRadius.circular(10),
);
                               }),
                               SizedBox(height: 20.h,),
                                  Obx(() {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BoldText(
                            fontSize: 24.sp,
                              text: controller.isCompleted.value
                                  ? "8:19"
                                  : "12:32",
                              // fontSize: screenWidth * 0.06,
                              selectionColor: AppColors.blueColor),
                          MainText(
                            fontSize: 22.sp,
                              text: controller.isCompleted.value
                                  ? "complete".tr
                                  : "remaining".tr,
                              // fontSize: screenWidth * 0.04
                              ),
                        ],
                      );
                    }),
                               SizedBox(height: 30.h,),

                    // SizedBox(height: verticalSpacing),
          
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: PauseContainer(
                              // height: 42,
                                onTap: () =>
                                
                                    controller.isCompleted.value = false,
                                 text: "back".tr,
                              
                                 
                                 )),
                        SizedBox(width: 20.w),
                       Expanded(
            child: PauseContainer(
              onTap: () {
                if (!controller.isCompleted.value) {
                  
                  controller.isCompleted.value = true;
                } else {
                  
                // Get.toNamed(RouteName.viewResponsesScreen); 
                  
                }
              },
              // height: 42,
              text: "assign_score".tr,
          
              icon: Icons.fast_forward,
              color: AppColors.assignColor,
            ),
          ),
                     ],
                    ),
                    SizedBox(height: 30.h,),

                    TeamProgressContainer(controller: controller),
                    SizedBox(height: 49.h,),
                    BoldText(text: "All Phases",fontSize: 24,selectionColor: AppColors.blueColor,),
                     SizedBox(height: 30.h,),



                      CustomStratgyContainer(
                        value: 0.6,
                      iconContainer: AppColors.forwardColor, icon: Icons.check, text1:  "phase1_strategy".tr, text2: "Completed • 20 min", text3: "completed".tr, smallContainer: AppColors.forwardColor, largeConatiner: AppColors.forwardColor,
                    flex: 3,flex1: 0,
                    ),
                     SizedBox(height: 10.h,),

                      CustomStratgyContainer(

                      iconContainer: AppColors.selectLangugaeColor, icon: Icons.play_arrow_sharp, text1: "phase2_strategy".tr ,text2: "Active • 30 min", text3: "active".tr, smallContainer: AppColors.selectLangugaeColor, largeConatiner: AppColors.selectLangugaeColor,
             
                    ),
                     SizedBox(height: 10.h,),
                     CustomStratgyContainer(
                      iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase3_implementation".tr, text2: "Upcoming • 25 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),
                         SizedBox(height: 10.h,),
                     CustomStratgyContainer(
                      iconContainer: AppColors.watchColor, icon: Icons.watch_later, text1: "phase4_evaluation".tr,text2: "Upcoming • 15 min", text3: "pending".tr, smallContainer: AppColors.watchColor, largeConatiner: AppColors.greyColor,flex: 4,flex1: 0,
             
                    ),

                    SizedBox(height: 30.h,),
                    RealTimeMonitorContainer(),
                 SizedBox(height: 50.h,),
                   Center(
                      child: LoginButton(
                        fontSize: 22,
                         text: "view_responses".tr,
                        color: AppColors.forwardColor,
                        ishow: true,
                        image: Appimages.eye,
                      ),
                    ),
                         ],
                       ),
                     ),
                    SizedBox(height: 50.h,)
                
        ],
      ),
    );
  }
}