import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';

class AdminScheduleScreen extends StatelessWidget {
  const AdminScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
    scrollbars: false, // ✅ ye side wali scrollbar hatayega
  ),
      child: ListView(
         physics: BouncingScrollPhysics(), // iOS style
        children: [
          Column(
            children: [
          
            CustomDashboardContainer(
                onTap: () {
               Get.toNamed(RouteName.adminOverviewOptionScreens);
             },
        text7: "start_early".tr,
          icon3: Icons.fast_forward,
          heading: "Team Building Workshop",
          text1: "Phase 1",
          // height: 10,
          text2: "Phase 1",
          description: "Team Building Workshop strengthens teamwork through interactive activities.",
          text3: "Resume",
          text4: "Next Phase",
          icon1: Icons.play_arrow,
          text5: "15 Players",
          text6: "Paused",
          icon2: Icons.square,
          ishow: false,
        ),
              SizedBox(height: 20.h,),
                 CustomDashboardContainer(
              onTap: () {
               Get.toNamed(RouteName.adminOverviewOptionScreens);
             },
          icon3: Icons.fast_forward,
          heading: "Team Building Workshop",
          text1: "Phase 1",
          // height: 10,
          text2: "Phase 1",
          description: "Team Building Workshop strengthens teamwork through interactive activities.",
          text3: "Resume",
          text4: "Next Phase",
          icon1: Icons.play_arrow,
          text5: "15 Players",
          
          icon2: Icons.square,
          ishow: false,
           svg: Appimages.edit,
       text7: "edit_session".tr,
          text6: "Friday 2:00 PM," ),
          
              //   CustomDashboardContainer(
                
              //   // onTap:()=> Get.toNamed(RouteName.overViewOptionScreen),
              //   heading: "Team Building Workshop",
              //   text1: "phase_1".tr,
              //   // height: 10,
              //   text2:"phase_1".tr,
              //   description: "Team Building Workshop strengthens teamwork through interactive activities.",
              //   text3: "resume".tr,
              //   text4:  "end".tr,
              //   icon1: Icons.play_arrow,
              //   text5: "15 Players",
              //   text6: "paused".tr,
              //   icon2: Icons.square,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}