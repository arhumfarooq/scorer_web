import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer_web/components/facilitator_folder/phases_container.dart';
import 'package:scorer_web/components/facilitator_folder/stages_row.dart';
import 'package:scorer_web/components/facilitator_folder/team_progress_container.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/pause_container.dart';

class PhasesScreen extends StatelessWidget {
  final StageController controller = Get.put(StageController());

   PhasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
      
                   Icon(Icons.arrow_downward_sharp,
                    color: AppColors.forwardColor, size: 41.sp),
                    StagesRow(),
                    SizedBox(height: 20.h,),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 50.w),
                       child: Column(
                         children: [
                           Obx(() {
                                 return Row(
                                   children: [
                                     Expanded(
                                       flex: controller.isCompleted.value ? 3 : 2,
                                       child: Container(
                                         height: 8.h,
                                      
                                         decoration: BoxDecoration(
                                           color: controller.isCompleted.value
                                               ? AppColors.forwardColor
                                               : AppColors.selectLangugaeColor,
                                           borderRadius: BorderRadius.circular(20.7.r),
                                         ),
                                       ),
                                     ),
                                     Expanded(
                                        flex: controller.isCompleted.value ? 0 : 1,
                                       child: Container(
                                         height: 8.h,
                                       
                                         decoration: BoxDecoration(
                                           color: AppColors.greyColor,
                                           borderRadius: BorderRadius.circular(20.7.r),
                                         ),
                                       ),
                                     ),
                                   ],
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

                    TeamProgressContainer(controller: controller)
                 
                         ],
                       ),
                     ),
                    SizedBox(height: 100.h,)
                
        ],
      ),
    );
  }
}