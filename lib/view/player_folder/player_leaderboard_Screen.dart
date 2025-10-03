import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scorer_web/components/admin_folder.dart/abcd_container.dart';
import 'package:scorer_web/components/admin_folder.dart/admin_team_progress_contaner.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/components/player_folder/complete_session_row.dart';
import 'package:scorer_web/components/player_folder/device_connect_note.dart';
import 'package:scorer_web/components/player_folder/phase_strategy_column.dart';
import 'package:scorer_web/components/player_folder/player_analysis.dart';
import 'package:scorer_web/components/player_folder/scenerio_container.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/controller/game_select_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart' show CustomSloderRow;
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/custom_stratgy_container.dart';
import 'package:scorer_web/widgets/filter_useable_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/pause_container.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/setting_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';
import 'package:scorer_web/widgets/useable_text_row.dart';


class PlayerLeaderboardScreen extends StatelessWidget {
  final RxBool isTeamSelected = false.obs;

  // final controller = Get.put(GameSelectController());


  PlayerLeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppbar(ishow4: true,ishow: true,),
              SizedBox(height: 56.h),

              /// Top fixed container
              Container(
                width: 794.w,
                height: 150.h,
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

                        Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BoldText(
                              text: "players".tr,
                              selectionColor: isTeamSelected.value
                                  ? AppColors.playerColo1r
                                  : AppColors.blueColor,
                              fontSize: 31.sp,
                            ),
                                            SizedBox(width: 18.w),
            
                            FlutterSwitch(
                              value: isTeamSelected.value,
                              onToggle: (val) {
                                isTeamSelected.value = val;
                              },
                              height: 52.h,
                              width: 75.w,
                              activeColor: AppColors.forwardColor,
                              inactiveColor: AppColors.forwardColor,
                            ),
                            SizedBox(width: 18.w),
                            BoldText(
                              text: "teams".tr,
                              selectionColor: isTeamSelected.value
                                  ? AppColors.blueColor
                                  : AppColors.playerColo1r,
                              fontSize: 31.sp
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h,),
                       Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                   Container(
                            width: 25.w,
                            height: 25.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.visitingColor,
                            ),
                          ),
                          SizedBox(width: 18.w,),
                                MainText(
                                        text: "live_updates".tr,
                                        color: AppColors.visitingColor,
                                        fontSize: 31.sp
                                      ),
                              ],
                            ),
                            SizedBox(height: 30.h,),
                            CreateContainer(
                              top: -30.h,
                              right: 6.w,
                              fontsize2: 28.sp,
                              text: "Your Rank 2nd",width: 280.w,height: 98.h,borderW: 2.w,arrowW: 35.w,arrowh: 42.h,)
                    
  ,SizedBox(height: 142.h,),
   Obx(() => PlayersRow(isTeamSelected: isTeamSelected.value)),
   SizedBox(height: 60.h,),
      Obx(
                    () => PlayersContainers(
                      text1: "1",
                      text2: isTeamSelected.value ? "team_alpha".tr : "Alex M.",
                      image: Appimages.facil2,
                      icon: Icons.keyboard_arrow_up_outlined,
                      iconColor: AppColors.arrowColor,
                      text4: "2,890 pts",
                      ishow: true,
                      containerColor: AppColors.yellowColor,
                              leftPadding: 20.w
            
                    ),
                  ),
                  SizedBox(height: 20.h),
                    
                  // SizedBox(height: screenHeight * 0.018),
                  Obx(
                    () => PlayersContainers(
                      text1: "2",
                      text2: isTeamSelected.value ? "Team Rock" : "Sarah J.",
                      image: Appimages.play2,
                      icon: Icons.keyboard_arrow_down_outlined,
                      iconColor: AppColors.brownColor,
                      text4: "2,890 pts",
                      ishow: true,
                      containerColor: AppColors.greyColor,
                           leftPadding: 20.w
            
                    ),
                  ),
                  SizedBox(height: 20.h),
                    
                  // SizedBox(height: screenHeight * 0.018),
                  Obx(
                    () => PlayersContainers(
                      text1: "3",
                      text2: isTeamSelected.value ? "Team Beta" : "Mike C.",
                      image: Appimages.play5,
                      icon: Icons.keyboard_arrow_down_outlined,
                      iconColor: AppColors.brownColor,
                      text4: "2,180 pts",
                      ishow: true,
                      containerColor: AppColors.orangeColor,
                              leftPadding: 20.w
            
                    ),
                  ),
                  SizedBox(height: 20.h),
                  PlayersContainers(
                    text1: "4",
                    text2: "Mike C.",
                    image: Appimages.play3,
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: AppColors.brownColor,
                    text4: "1,760 pts",
                    ishow: true,
                    containerColor: AppColors.playerColor,
                            leftPadding: 20.w
            
                  ),
                  SizedBox(height: 20.h),
                    
                  // SizedBox(height: screenHeight * 0.018),
                  PlayersContainers(
                    text1: "5",
                    text2: "Mike C.",
                    image: Appimages.play4,
                    icon: Icons.keyboard_arrow_up_outlined,
                    iconColor: AppColors.forwardColor,
                    text4: "1,760 pts",
                    ishow: true,
                    containerColor: AppColors.playerColor,
                    leftPadding: 20.w
                  ),
                  SizedBox(height: 60.h,),
                    LoginButton(
                      

                         text: "move_to_phase_3".tr,
                        color: AppColors.forwardColor,
                        ishow: true,
                        image: Appimages.submit,
                      ),
                      SizedBox(height: 10.h), 
                      LoginButton(
                        // fontSize: 19,

                        text: "share_results".tr,
                        ishow: true,
                        color: AppColors.redColor,
                        image: Appimages.move,
                      ),
                      // SizedBox(height: screenHeight * 0.012), 
                      SizedBox(height: 10.h), 

                      LoginButton(
                        fontSize: 19,
                      text: "export_data".tr,
                        ishow: true,
                        image: Appimages.export,
                      ),
                      SizedBox(height: 40.h,)
                    
               
                 
                 
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
