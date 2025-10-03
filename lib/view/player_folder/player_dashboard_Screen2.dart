import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/abcd_container.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/components/player_folder/device_connect_note.dart';
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
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/setting_container.dart';


class PlayerDashboardScreen2 extends StatelessWidget {


  PlayerDashboardScreen2({super.key});

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
                      ABCDContainer(),
                      SizedBox(height: 20.h,),
                        Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: AppColors.brownColor2,
                              shape: BoxShape.circle,
                            ),
                          ),

                          SizedBox(width: 10.w),
                        MainText(
  text: "waiting_facilitator_start".tr,
  fontSize: 20.sp,
),
                        ],
                      ),

                         SizedBox(height: 40 .h
                         ),

                      PlayersContainers(
                        color: AppColors.forwardColor,
                        text3: "joined".tr,
                        text1: "1",
                        text2: "You",
                        image: Appimages.play1,
                        // scaleFactor: widthScaleFactor,
                      ),
                      SizedBox(height: 15 .h),
                      PlayersContainers(
                        color: AppColors.forwardColor,
                        text3: "joined".tr,
                        text1: "2",
                        text2: "Sarah J.",
                        image: Appimages.play2,
                        // scaleFactor: widthScaleFactor,
                      ),
                      // SizedBox(height: 15 * heightScaleFactor)
                      SizedBox(height: 15 .h),
                      // ,
                      PlayersContainers(
                        color: AppColors.forwardColor,
                        text3:"joined".tr,
                        text1: "3",
                        text2: "Mike C.",
                        image: Appimages.play3,
                        // scaleFactor: widthScaleFactor,
                      ),
                      // SizedBox(height: 15 * heightScaleFactor),
                      SizedBox(height: 15 .h),

                      PlayersContainers(
                        color: AppColors.forwardColor,
                        text3: "joined".tr,
                        text1: "4",
                        text2: "David B.",
                        image: Appimages.play4,
                        // scaleFactor: widthScaleFactor,
                      ),
                      // SizedBox(height: 15 * heightScaleFactor),
                      SizedBox(height: 15 .h),

                      PlayersContainers(
                        color: AppColors.forwardColor,
                        text3: "joined".tr,
                        text1: "5",
                        text2: "Lisa G.",
                        image: Appimages.play5,
                        // scaleFactor: widthScaleFactor,
                      ),
                      SizedBox(height: 50.h,),
                      DeviceConnectNote(),
                      SizedBox(height: 30.h,),
                           LoginButton(
                        // onTap: ()=>Get.toNamed(RouteName.gameStart1Screen),
                        text:"leave_session".tr,
                        ishow: true,
                        image: Appimages.leave,
                        color: AppColors.redColor,
                     
                      ),
                      SizedBox(height: 70.h,)

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
