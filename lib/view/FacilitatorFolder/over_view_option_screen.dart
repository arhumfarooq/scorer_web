
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/leader_board_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/overview_screen.dart';
import 'package:scorer_web/components/facilitator_folder/phases_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/players_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/over_view_controller.dart';
import 'package:scorer_web/view/FacilitatorFolder/facil_over_view_stack_container.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class OverViewOptionScreen extends StatelessWidget {
  final controller = Get.put(OverviewController());

  OverViewOptionScreen({super.key});

  final List<String> tabs = [
    "Overview".tr,
    "Phases".tr,
    "Players".tr,
    "Leaderboard".tr,
  ];

  final List<Widget> screens = [
    OverviewScreen(),
    PhasesScreen(),
    PlayersScreen(),
    LeaderBoardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(ishow: true),
              SizedBox(height: 56.h),
              Container(
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
                      top: 57.h,
                      left: -30.w,
                      child: ForwardButtonContainer(image: Appimages.arrowback),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 48.h),
                          Center(
                            child: BoldText(
                              text: "Eranove Odyssey – Team A",
                              fontSize: 48.sp,
                              selectionColor: AppColors.blueColor,
                            ),
                          ),
                          SizedBox(height: 20.h),
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
                          SizedBox(height: 45.h),

                          /// 🔥 Fixed Tab Container
                          FacilOverViewStackContainer(
                            controller: controller,
                            tabs: tabs,
                          ),

                          SizedBox(height: 12.h),

                          /// Show selected screen
                          Obx(() => screens[controller.selectedIndex.value]),
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
