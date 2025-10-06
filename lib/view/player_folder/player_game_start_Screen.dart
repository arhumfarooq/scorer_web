import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer_web/components/admin_folder.dart/abcd_container.dart';
import 'package:scorer_web/components/admin_folder.dart/admin_team_progress_contaner.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/components/player_folder/complete_session_row.dart';
import 'package:scorer_web/components/player_folder/device_connect_note.dart';
import 'package:scorer_web/components/player_folder/phase_strategy_column.dart';
import 'package:scorer_web/components/player_folder/scenerio_container.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/controller/game_select_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/custom_stratgy_container.dart';
import 'package:scorer_web/widgets/filter_useable_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/pause_container.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/setting_container.dart';
import 'package:scorer_web/widgets/team_alpha_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';


class PlayerGameStartScreen extends StatelessWidget {
  final controller = Get.put(GameSelectController());


  PlayerGameStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Stack(
            children: [
                  Positioned(
              top:700.h,
              right: 0,
              // left: 0,
              child: TeamAlphaContainer()),
              Column(
                children: [
                  CustomAppbar(ishow4: true,ishow: true,),
                  SizedBox(height: 56.h),
              
                  /// Top fixed container
                  GradientColor(
                    height: 180.h,
                    child: Container(
                      width: 794.w,
                      height: 235.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                          topRight: Radius.circular(40.r),
                        ),
                        // color: AppColors.whiteColor,
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
                                  text: "Team Alpha",
                                  fontSize: 48.sp,
                                  selectionColor: AppColors.blueColor,
                                ),
                              ),
                            
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              
                       
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
                                  
                              Stack(
                              clipBehavior: Clip.none,
                              children: [
                                SizedBox(
                                   height: 370 .h,
                                   width: 428.w,
                                    // width: 209 * widthScaleFactor,
                                  child: Image.asset(
                                    Appimages.group,
                                   fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10.h,
                                  right: 15 .w,
                                  child: CreateContainer(fontsize2: 12,
                                    text: "5 Phases",
                                    top: -25.h,
                                    right: 2.w,
                                    width: 172 .w,
                                    borderW: 2.w,
                                    arrowW: 30.w,
                                    arrowh: 35.h,
                                    height: 63 .h,
                                     // Assuming a default height
                                    // fontSize: 14 * widthScaleFactor,
                                  ),
                                ),
                              ],
                            ),
                                  
                                SizedBox(height: 20.h,),
                            BoldText(
                                    text: "team_building_workshop".tr,
                                    fontSize: 30.sp,
                                    selectionColor: AppColors.blueColor,
                                  ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  Appimages.person,
                                  height: 25.h,
                                  width: 25.w,
                                ),
                                SizedBox(width: 8 .w),
                                MainText(
                                  text: "Facilitator: Sarah Johnson",
                                  fontSize: 20.sp,
                                )
                              ],
                            ),
                                  
                            SizedBox(height: 30.h,),
                            Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13.w,
                      ),
                      child: Container(
                        height: 500.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.greyColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 17.h,
                                    right: 21.w,
                                    left: 20.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BoldText(
                              text: "current_phase".tr,
                              fontSize: 30.sp,
                              selectionColor: AppColors.blueColor,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                UseableContainer(
                               
                                  text: "Phase 2",
                                  color: AppColors.orangeColor,
                                  // fontSize: 10.sp,
                                ),
                                SizedBox(width: 10.w),
                                MainText(
                                  text: "strategy_building".tr,
                                  fontSize: ResponsiveFont.getFontSizeCustom(
                                    defaultSize: 20.sp,
                                    smallSize: 11.sp,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        CircularPercentIndicator(
                          radius: 50.0.r,
                          lineWidth: 4.0.w,
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
                                fontSize: 20.sp,
                                selectionColor: AppColors.blueColor,
                              ),
                              MainText(
                                text: "remaining".tr,
                                fontSize: 12.sp,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    MainText(
                      // text: "team_collab_phase".tr,\
                      text: "Team collaboration and strategic planning phase",
                      fontSize: 20.sp,
                    ),
                    SizedBox(height: 15.h),
                                  
                    // // / CompleteSessionRow
                    // Obx(() {
                    //   return CompleteSessionRow(controller: controller);
                    // }),
                                   CompleteSessionRow(controller: controller),
                    SizedBox(height: 16.h),
                                  
                    /// Custom Strategy Container
                    Obx(() => CustomStratgyContainer(
                          value: controller.isCompleted.value ? 1.0 : 0.3,
                          // flex: controller.isCompleted.value ? 4 : 3,
                          borderColor: controller.isCompleted.value
                              ? AppColors.forwardColor
                              : AppColors.selectLangugaeColor,
                          iconContainer: controller.isCompleted.value
                              ? AppColors.forwardColor
                              : AppColors.selectLangugaeColor,
                          icon: Icons.play_arrow_sharp,
                          text1: "Stage 2",
                          text2: controller.isCompleted.value
                              ? "Active • 30 min"
                              : "Time Left 30 min",
                          text3: "active".tr,
                          smallContainer: controller.isCompleted.value
                              ? AppColors.forwardColor
                              : AppColors.selectLangugaeColor,
                          largeConatiner: controller.isCompleted.value
                              ? AppColors.forwardColor
                              : AppColors.selectLangugaeColor,
                        )),
                    SizedBox(height: 20.h),
                                  
                    /// Pause / Back buttons
                    Obx(() {
                      bool showBack = controller.clickCount.value >= 2;
                      return Center(
                        child: showBack
                            ? PauseContainer(
                                width: double.infinity,
                                onTap: () => controller.back(),
                                text: "back".tr,
                                color: AppColors.selectLangugaeColor,
                                // height: 35.h,
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: PauseContainer(
                                      onTap: () => controller.pause(),
                                      text: "pause".tr,
                                      color: AppColors.selectLangugaeColor,
                                      // height: 35.h,
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Expanded(
                                    child: PauseContainer(
                                      onTap: () => controller.nextPhase(),
                                      text: "next_phase".tr,
                                      icon: Icons.fast_forward,
                                      color: controller.isCompleted.value
                                          ? AppColors.forwardColor
                                          : AppColors.assignColor,
                                      // height: 35.h,
                                    ),
                                  ),
                                ],
                              ),
                      );
                    })
                                    ],
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    ScenerioContainer(),
                    SizedBox(height: 30.h,),
                        Obx(() {
                                  return FilterUseableContainer(
                                    isSelected: controller.gamevalue.value == 0,
                                // fontSze: ResponsiveFont.getFontSizeCustom(
                                //         defaultSize: 13*widthScaleFactor,
                                //         smallSize: 10*widthScaleFactor
                                //       ),
                                    text: "mountain_resort".tr,
                                    onTap: () {
                                      controller.gameSelect(0);
                                    },
                                  );
                                }),
                                SizedBox(height: 10 .h),
                                Obx(() => FilterUseableContainer(
                                      isSelected: controller.gamevalue.value == 1,
                                   
                                      text: "beach_hotel".tr,
                                      onTap: () {
                                        controller.gameSelect(1);
                                      },
                                    )),
                                SizedBox(height: 10 .h),
                                Obx(() => FilterUseableContainer(
                                      isSelected: controller.gamevalue.value == 2,
                                      // fontSze: 13 * heightScaleFactor,
                                      // fontSze: ResponsiveFont.getFontSizeCustom(
                                      //   defaultSize: 13*widthScaleFactor,
                                      //   smallSize: 10*widthScaleFactor
                                      // ),
                                      
                                      text: "city_conference_center".tr,
                                      onTap: () {
                                        controller.gameSelect(2);
                                      },
                                    )),
                                    SizedBox(height: 30.h,),
                                       Container(
                                  width: double.infinity,
                                  height: 250.h,
                                  padding: EdgeInsets.all(12 .sp),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.greyColor,
                                      width: 1.5,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(24 .r),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10,),
                                      BoldText(
                                        text:  "explain_reasoning".tr,
                                        fontSize: 30.sp,
                                        selectionColor: AppColors.blueColor,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          cursorColor: AppColors.blackColor,
                                          maxLines: null,
                                          expands: true,
                                          textAlignVertical: TextAlignVertical.top,
                                          decoration: InputDecoration(
                                            hintText:
                                                "share_thought_process".tr,
                                            hintStyle:
                                                TextStyle(color: AppColors.teamColor),
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                  SizedBox(height: 40.h,),
                                AdminTeamProgress(),
                                SizedBox(height: 30.h,),
                             Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Column(
                    children: [
                      PhaseStrategyColumn(controller: controller),
                      SizedBox(height: 20.h),
                                  
                      // Previous Button
                      Obx(() {
                        return controller.currentPhase.value >= 2
                                    ? LoginButton(
                      // fontSize: 20.sp,
                      text: "previous".tr,
                      color: AppColors.redColor,
                    )
                                    : const SizedBox();
                      }),
                                  
                      SizedBox(height: controller.currentPhase.value >= 1? 20.h : 10.h),
                                  
                      // Submit Response Button
                      Obx(() {
                        return LoginButton(
                                  onTap: () => Get.toNamed(RouteName.submitResponseScreen),
                                  ishow: true,
                                  // fontSize: 20.sp,
                                  image: Appimages.submit,
                                  text: "submit_response".tr,
                                  color: controller.currentPhase.value >= 1
                    ? AppColors.forwardColor
                    : AppColors.assignColor,
                        );
                      }),
                    ],
                                    ),
                                  ),
                                  
                                  
                            SizedBox(height: 70.h,)
                                  
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              
                // SizedBox(height: 50.h,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
