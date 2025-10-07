import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/components/facilitator_folder/engagement_Container.dart';
import 'package:scorer_web/components/facilitator_folder/new_session_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
       behavior: ScrollConfiguration.of(context).copyWith(
    scrollbars: false, // ✅ ye side wali scrollbar hatayega
  ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        SizedBox(height: 50.h,),
      Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 25.w),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            BoldText(text: "Session Information",selectionColor: AppColors.blueColor,fontSize: 32.sp,),
        MainText(
          fontSize: 26.sp,
          text: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression."),
         
        ],
      ),
      ) ,
      SizedBox(height: 40.h,),
        EngagementContainer(),
        SizedBox(height: 40.h,),
        NewSessionContainer()
      
          ],
        ),
      ),
    );
  }
}