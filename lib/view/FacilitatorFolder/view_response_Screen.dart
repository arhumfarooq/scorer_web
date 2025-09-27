
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/view_response_stack_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/over_view_controller.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/custom_stratgy_container.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class ViewResponseScreen extends StatelessWidget {
  // final controller = Get.put(OverviewController());

  final StageController controller = Get.put(StageController());
final List<String> tabs = ["all".tr, "pending".tr, "scored".tr];

  ViewResponseScreen({super.key});

  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: cros,
            children: [
              CustomAppbar(ishow: true),
              SizedBox(height: 56.h),
              Container(
                height: 1050.h,
                width: 794.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                ),
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
                        image: Appimages.arrowback),
                    ),
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 48.h),
                                Center(
                                  child: BoldText(
                                    text: "Stage 2 Responses",
                                    fontSize: 48.sp,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                ),
                                SizedBox(height: 70.h),
                                  CustomStratgyContainer(
                                    circleH: 40.h,
                                    circleW: 40.w,
                                    circleS: 20.sp,
                              isshow: true,
                              mainHeight: 1.3,
                                                fontSize: 24.sp,
                              containerHeight: 280.h,
                              width3: 54.w,
                              spaceHeight2: 40.h,
                              spaceHeight: 20.h,
                              extra:
                                  "Define your team's primary objective for the next quarter and identify three key strategies to achieve it.".tr,
                              // width1: 150,
                              // width2: 126,
                              iconContainer: AppColors.selectLangugaeColor,
                              icon: Icons.play_arrow_rounded,
                              text1:"Phase 2 Strategy Building".tr,
                              text2: 'Completed • 20 min',
                              text3: 'active'.tr,
                              smallContainer: AppColors.selectLangugaeColor,
                              largeConatiner: AppColors.selectLangugaeColor,
                            ),
                            SizedBox(height: 60.h,),
                            Center(
                              child: CreateContainer( text: "stage2_scoring".tr, width: 290.w,height: 67.h,
                              arrowW: 37.h,arrowh:45.h ,borderW: 1.97.w,top: -40.h,right: 20.w,
                              ),
                            ),
                            SizedBox(height: 67.h,),
                             Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.greyColor, width: 1.5),
                                      borderRadius: BorderRadius.circular(26.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        BoldText(
                                          text: "08",
                                          selectionColor: AppColors.redColor,
                                          fontSize: 45.sp,
                                        ),
                                        SizedBox(width: 11),
                                        BoldText(
                                          text: "scored".tr,
                                          selectionColor: AppColors.blueColor,
                                          fontSize: 30.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Expanded(
                                  child: Container(
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: AppColors.greyColor, width: 1.5),
                                      borderRadius: BorderRadius.circular(26.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        BoldText(
                                          text: "04",
                                          selectionColor: AppColors.redColor,
                                          fontSize: 45.sp,
                                        ),
                                        SizedBox(width: 11),
                                        BoldText(
                                          text: "pending".tr,
                                          selectionColor: AppColors.blueColor,
                                          fontSize: 30.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40.h,),
                            
                            
                                              
                                  ],
                            ),
                          ),
                             ViewResponseStackContainer(controller: controller, tabs: tabs),
                        SizedBox(height: 60.h,),
                          CustomResponseContainer(
                            // t
                        onTap: () {
                          // Get.toNamed(RouteName.evaluateResponseScreen2);
                        },
                        
                        
                                          ),
                                           CustomResponseContainer(
                    onTap: () {
  // Get.toNamed(RouteName.viewScoreScreen);
},
              color1: AppColors.forwardColor,
              text1: "view_score".tr,
              image: Appimages.eye,
              text: "scored".tr,
              ishow: true,
              textColor: AppColors.whiteColor,
              
                  ),
                                      
                     
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
