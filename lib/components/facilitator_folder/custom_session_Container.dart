import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/session.dart'; // Assuming this exists

class CustomSessionContainer extends StatelessWidget {
  const CustomSessionContainer({
    super.key,
  });

  // Removed final double heightScaleFactor;
  // Removed final double widthScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Dimensions now use ScreenUtil extensions
      height: 440.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.greyColor,
          width: 1.5.w, // Border width uses .w
        ),
        borderRadius: BorderRadius.circular(24.r), // Radius uses .r
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w), // Padding uses .w
        child: Column(
          children: [
            SizedBox(height: 20.h), // Vertical spacing uses .h
            BoldText(
              text: "session_statistics".tr,
              selectionColor: AppColors.blueColor,
              fontSize: 28.sp, // Font size uses .sp
            ),
            SizedBox(height: 30.h), // Vertical spacing uses .h
            SessionUseableRow(
            
              iamge: Appimages.phone1,
              text: "average_score".tr,
              text2: "across_all_players".tr,
              tex3: "2,890",
              tex4: "pts",
            ),
            SizedBox(height: 25.h), // Vertical spacing uses .h
            SessionUseableRow(
            
              iamge: Appimages.phone2,
              text: "top_performer".tr,
              text2: "highest_scoring_player".tr,
              tex3: "Alex M.",
              tex4: "2890 points",
            ),
            SizedBox(height: 25.h), // Vertical spacing uses .h
            SessionUseableRow(
            
              iamge: Appimages.phone3,
              text: "completion_rate".tr,
              text2: "players_finished".tr,
              tex3: "100%",
              tex4: "12/12 players",
            ),
            SizedBox(height: 25.h), // Vertical spacing uses .h
            SessionUseableRow(
           
              iamge: Appimages.phone4,
              text: "participation_rate".tr,
              text2: "participation_rate".tr,
              tex3: "100%",
              tex4: "Very high",
            ),
          ],
        ),
      ),
    );
  }
}
