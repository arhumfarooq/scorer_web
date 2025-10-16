import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';

class ActiveSessionScreen extends StatelessWidget {
  const ActiveSessionScreen({super.key});

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
                Get.toNamed(RouteName.overViewOptionScreen);
              },
             
          // width: 70,
                heading: "Team Building Workshop",
                text1: "phase_1".tr,
                // height: 10,
                text2: "phase_1".tr,
                description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                text3: "Pause".tr,
                text4: "next_phase".tr,
                icon1: Icons.pause,
                text5: "15 Players",
                text6: "25min left",
                icon2: Icons.fast_forward,
              ),
              SizedBox(height: 20.h,),
                 CustomDashboardContainer(
               onTap: () {
                Get.toNamed(RouteName.overViewOptionScreen);
              },
          // width: 70,
                heading: "Team Building Workshop",
                text1: "phase_1".tr,
                // height: 10,
                text2: "phase_1".tr,
                description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                text3: "Pause".tr,
                text4: "next_phase".tr,
                icon1: Icons.pause,
                text5: "15 Players",
                text6: "25min left",
                icon2: Icons.fast_forward,
              ),
          
          
            ],
          ),
        ],
      ),
    );
  }
}