import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/role_Selection_container.dart';
import 'package:scorer_web/components/role_text_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/role_selection_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/page_changed_container.dart';

class ChooseYpurRoleScreen extends StatelessWidget {
  final RoleSelectionController controller = Get.put(RoleSelectionController());

  ChooseYpurRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
  body: GradientBackground(
    child: SafeArea(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          /// Center me container
          Center(
            child: Container(
              width: 1330.w,
              height: 447.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: AppColors.whiteColor,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
               
                  Padding(
                    padding: EdgeInsets.only(top: 80.h, bottom: 55.h,
                  
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                       padding:  EdgeInsets.only(  left: 246.w),
                          child: Container(
                            width: 350.w,
                            height: 50.h,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -30,
                                  right: -55,
                                  child: Transform.rotate(
                              angle: -0.1,
                              child: RoleTextContainer(),
                            ),),
                                BoldText(
                                  text:
                                      "Choose Your",
                                  // textAlign: TextAlign.center,
                                  fontSize: 48.sp,
                                  selectionColor: AppColors.blueColor,
                                  height: 0.2.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 23.h),
                        Padding(
                          padding:  EdgeInsets.only(  left: 207.w),
                          child: MainText(
                            fontSize: 24.sp,
                            height: 0,
                            textAlign: TextAlign.center,
                            text:
                               "Select how you want to participate in the session"
                          ),
                        ),
SizedBox(height: 50.h,),
                        Padding(
                          padding: EdgeInsets.only(left: 421.w,right: 701.w),
                          child: ForwardButtonContainer(
                             onTap: () {
    final controller = Get.find<RoleSelectionController>();

    if (controller.selectedIndex.value == 0) {
      
      Get.toNamed(RouteName.adminLoginScreen);
    } else if (controller.selectedIndex.value == 1) {
      
      Get.toNamed(RouteName.facilLoginScreen);
    } 
    else if (controller.selectedIndex.value == 2) {
      
      Get.toNamed(RouteName.playerLoginScreen);
    } 
    else {
      
    Get.snackbar(
  "selection_required".tr,
  "please_select_role".tr,
  backgroundColor: AppColors.forwardColor,
  colorText: AppColors.whiteColor,
);}}
// width2: 66.w,
// height2: 66.h,
//                             height1: 94.h,
//                             width1: 94.w,
                          ),
                        )
                       
                      ],
                    ),
                  ),

                  Positioned(
                    right: -70,
                    top: -150,
                    child: Container(
                      width: 566.w,
                      height: 935.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55.r),
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000).withOpacity(0.15),
                            blurRadius: 89.62.r,
                            offset: Offset(0, 3.44)
                          )
                        ]
                        
                      ),
                      child:  Padding(
                        padding:  EdgeInsets.symmetric(vertical: 16.h),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                                             Obx(() => RoleSelectionContainer(
                          onTap: () => controller.changeTab(0),
                          isSelected: controller.selectedIndex.value == 0,
                          image: Appimages.prince1,
                          image2: Appimages.admin,
                          text: "administrator".tr,
                          text2: 'admin_description'.tr,
                        )),
                                            SizedBox(height: 5.h),
                        
                                            Obx(() => RoleSelectionContainer(
                          onTap: () => controller.changeTab(1),
                          isSelected: controller.selectedIndex.value == 1,
                          image: Appimages.blackman,
                          image2: Appimages.facil,
                          text: "facilitator".tr,
                          text2: 'facilitator_description'.tr,
                          // width: 169,
                        )),
                                            SizedBox(height: 5.h),
                        
                                             Obx(() => RoleSelectionContainer(
                          onTap: () => controller.changeTab(2),
                          isSelected: controller.selectedIndex.value == 2,
                          image: Appimages.blackgirl,
                          image2: Appimages.player,
                          text: "player".tr,
                          text2: 'player_description'.tr,
                          width: 160,
                        )),
                        ],
                                            ),
                      ),
                   
                    ),
                  )
                ],
              ),
            ),
          ),

          /// Bottom me SVG
          Positioned(
            bottom: 54.h,
            left: 54.w,
            child: SizedBox(
              width: 136.w,
              height: 118.h,
              child: SvgPicture.asset(Appimages.splash),
            ),
          ),
        ],
      ),
    ),
  ),
);
  }
}