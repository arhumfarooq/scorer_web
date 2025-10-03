
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/filter_controller.dart';
import 'package:scorer_web/controller/over_view_controller.dart';
import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/filter_useable_container.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/team_alpha_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class OverViewOptionScreen extends StatelessWidget {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // 👈 add this
  final controller = Get.put(OverviewController());
  final controller1 = Get.put(FilterController()); 


  OverViewOptionScreen({super.key});

  final List<String> tabs = [
    "Overview".tr,
    "Phases".tr,
    "Players".tr,
    "Leaderboard".tr,
  ];

 

  @override
  Widget build(BuildContext context) {
     final List<Widget> screens = [
    OverviewScreen(),
    PhasesScreen(),
    PlayersScreen(),
    LeaderBoardScreen(onOpenDrawer: () => _scaffoldKey.currentState?.openDrawer()), // 
  ];
    return Scaffold(
      // drawer: ,
       key: _scaffoldKey, // yaha assign karna zaruri hai
      drawer: SizedBox(
        width: 412.w,
        child: Container(
          decoration: BoxDecoration(
            borderRadius:  BorderRadius.zero
          ),
          child: Drawer(
            backgroundColor: AppColors.whiteColor,
            
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 38.w),
              child: ScrollConfiguration(
                 behavior: ScrollConfiguration.of(context).copyWith(
    scrollbars: false, // ✅ ye side wali scrollbar hatayega
  ),
                child: SingleChildScrollView(
                  child: Column(
                    // padding: EdgeInsets.zero,
                    children: [
                      SizedBox(height: 30.h,),
                    Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BoldText(
                                 text: "filter".tr,
                                  fontSize: 30.sp
                                  ,
                                  selectionColor: AppColors.blueColor,
                                ),
                                GestureDetector(
                                  onTap: () => Get.back(),
                                  child: MainText(
                                    text: "cancel".tr,
                                    fontSize: 24.sp,
                                    color: AppColors.forwardColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                  
                       SizedBox(height: 34),
                  
                            Center(
                              child: BoldText(
                                text: "by_phase".tr,
                                fontSize: 32.sp,
                                selectionColor: AppColors.blueColor,
                              ),
                            ),
                                SizedBox(height: 20.h),
                            
                          
                          Obx(() => FilterUseableContainer(
                            height: 100.h,
                                onTap: () => controller1
                                .select(0),
                                isSelected: controller.selectedIndex.value == 0,
                                text: "phase_1".tr
                              )),
                           SizedBox(height: 10.h),
                          Obx(() => FilterUseableContainer(
                            height: 100.h,
                  
                                onTap: () => controller1.select(1),
                                isSelected: controller.selectedIndex.value == 1,
                                text: "phase_2".tr
                              )),
                                    SizedBox(height: 10.h),
                            
                          Obx(() => FilterUseableContainer(
                            height: 100.h,
                  
                                onTap: () => controller1.select(2),
                                isSelected: controller.selectedIndex.value == 2,
                                text: "phase_3".tr
                              )),
                              SizedBox(height: 40.h),
                  
                      Center(
                        child: BoldText(
                          text: "by_stage".tr,
                          fontSize: 32.sp,
                          selectionColor: AppColors.blueColor,
                        ),
                      ),
                                SizedBox(height: 20.h),
                  
                  
                        Obx(() => FilterUseableContainer(
                            height: 100.h,
                  
                            onTap: () => controller1.selectStage(0),
                            isSelected: controller1.selectedstage.value == 0,
                            text: "stage_1".tr
                            
                          )),
                                     SizedBox(height: 10.h),
                  
                      Obx(() => FilterUseableContainer(
                            height: 100.h,
                  
                            onTap: () => controller1.selectStage(1),
                            isSelected: controller1.selectedstage.value == 1,
                            text:"stage_2".tr
                          )),
                       SizedBox(height: 10.h),
                      Obx(() => FilterUseableContainer(
                            height: 100.h,
                  
                            onTap: () => controller1.selectStage(2),
                            isSelected: controller1.selectedstage.value == 2,
                            text: "Stage 3",
                          )),
                  
                          SizedBox(height: 40.h),
                  
                      
                      Center(
                        child: LoginButton(
                          // fontSize: 18,
                          text: "clear_filter".tr,
                          color: AppColors.redColor,
                        ),
                      ),
                       SizedBox(height: 10.h),
                      Center(
                        child: LoginButton(
                          // fontSize: 18,
                          text: "apply_filter".tr,
                          color: AppColors.forwardColor,
                        ),
                      ),
                      SizedBox(height: 30.h,)
                  
                  
                            
                       
                  
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: GradientBackground(
        child: Stack(
          
          children: [

            Positioned(
              top:700.h,
              right: 0,
              // left: 0,
              child: TeamAlphaContainer()),
            Column(
              // crossAxisAlignment: cros,
              children: [
                CustomAppbar(ishow: true),
                SizedBox(height: 56.h),
                Expanded(
                  child: Container(
                               
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
                      
                   
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         
                                
                                
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
                          image: Appimages.arrowback),
                                            ),
                                        Positioned(
                                          top: -140,
                                          right: 312.w,
                                          left: 312.w,
                                          child: CustomStackImage(
                                          
                                          ),
                                        ),
                                     Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                           Center(
                                          child: BoldText(
                                            // text: "Hello Administrator, Chris!",
                        text: "Eranove Odyssey – Team A",
                                            fontSize: 48.sp,
                                            selectionColor: AppColors.blueColor,
                                          ),
                                        ),
                                        //  MainText(text: "Welcome! You have full system access to\nmanage sessions, users, and game content.",fontSize: 22.sp,)
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
                                          child: Padding(
                                            padding:                           EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            
                                            
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                                  FacilOverViewStackContainer(
                                                                      controller: controller,
                                                                      tabs: tabs,
                                                                    ),
                                            SizedBox(height: 20.h),
                                                                         Expanded(child: Obx(() => screens[controller.selectedIndex.value])),
                                            
                                                                 
                                            
                                             
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                            ),
                                      
                            /// 🔥 Fixed Tab Container
                          
                                      
                            // SizedBox(height: 12.h),
                                      
                            /// Show selected screen
                           
                          ],
                        ),
                      ],
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
