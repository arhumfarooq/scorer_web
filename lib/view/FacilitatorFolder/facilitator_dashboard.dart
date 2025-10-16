
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';

class FacilitatorDashboard extends StatelessWidget {
  final FacilDashboardController controller = Get.put(FacilDashboardController());
  FacilitatorDashboard({super.key});

  final List<Widget> screens = [
    ActiveSessionScreen(),
    ScheduleScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
              // ✅ Custom AppBar
              CustomAppbar(
                width3: 205.w,
                height3: 61.h,
                borderW: 1.96.w,
                text: "create".tr,
                right2: -30.w,
                right: 20.w,
                top: -30.h,
                onTap: () {
                  Get.toNamed(RouteName.createNewSessionScreen);
                },
              ),

              SizedBox(height: 56.h),

              // ✅ Top Gradient Welcome Section
              GradientColor(
                height: 235.h,
                child: Container(
                  width: 794.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.r),
                      topRight: Radius.circular(40.r),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -140,
                        right: 312.w,
                        left: 312.w,
                        child: CustomStackImage(),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BoldText(
                                 text: "welcome_back".tr,
                                fontSize: 48.sp,
                                selectionColor: AppColors.blueColor,
                              ),
                                BoldText(
                            text: " Adam!",
                            fontSize: 48.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                            ],
                          ),
                          Center(
                            child: MainText(
                              fontSize: 22.sp,
                              textAlign: TextAlign.center,
                          
 text: "company_crisis_message".tr,                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // ✅ Main Content Area
              Expanded(
                child: GradientColor(
                  ishow: false,
                  child: Container(
                    width: 794.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.r),
                        bottomRight: Radius.circular(40.r),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.h),
                        FacilDashBoardStackContainer(controller: controller),
                        SizedBox(height: 20.h),

                        // ✅ Switchable screens without layout issue
                        Expanded(
                          child: Obx(() => screens[controller.selectedIndex.value]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
