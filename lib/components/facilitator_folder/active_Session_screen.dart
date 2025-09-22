import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';

class ActiveSessionScreen extends StatelessWidget {
  const ActiveSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      //  Container(
      //   width: 698.w,
      //   height: 602.h,
      //   color: AppColors.arrowColor,
      //  )
       CustomDashboardContainer(
       
// width: 70,
          heading: "Team Building Workshop",
          text1: "phase_1".tr,
          // height: 10,
          text2: "phase_1".tr,
          description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
          text3: "paused".tr,
          text4: "next_phase".tr,
          icon1: Icons.pause,
          text5: "15 Players",
          text6: "25min left",
          icon2: Icons.fast_forward,
        ),
      ],
    );
  }
}