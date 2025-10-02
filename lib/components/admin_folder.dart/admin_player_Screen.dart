import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/team_distrbution_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/all_players_container.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/login_button.dart';

class AdminPlayerScreen extends StatelessWidget {
  const AdminPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 51.h,),
          Padding(
            padding: EdgeInsets.only(right: 30.w,left: 22.w),
            child: Row(
                  children: [
                    Image.asset(
            Appimages.group,
            width: 238.w,
            height: 209.h,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
            child: Container(
              width: 212.w,
              height: 228.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.greyColor,
                  width: 1.7.w,
                ),
                borderRadius: BorderRadius.circular(47.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoldText(
                    text: "12",
                    selectionColor: AppColors.forwardColor,
                    fontSize: 47.sp,
                  ),
                  BoldText(
                    textAlign: TextAlign.center,
                    text: "active".tr,
                    fontSize: 31.sp,
                    selectionColor: AppColors.blueColor,
                  ),
                  BoldText(
                    textAlign: TextAlign.center,
                    text: "players".tr,
                    fontSize: 31.sp,
                    selectionColor: AppColors.blueColor,
                  ),
                ],
              ),
            ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
            child: Container(
              width: 212.w,
                    height: 228.h,
            
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.greyColor,
                  width: 1.7.w,
                ),
                borderRadius: BorderRadius.circular(47.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BoldText(
                    text: "02",
                    selectionColor: AppColors.redColor,
                    fontSize: 47.sp,
                  ),
                  BoldText(
                    textAlign: TextAlign.center,
                    text: "inactive\nplayers".tr,
                    fontSize: 31.sp,
                    selectionColor: AppColors.blueColor,
                  ),
                ],
              ),
            ),
                    ),
                  ],
                ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     BoldText(
  text: "all_players".tr,
  fontSize: 31.sp,
  // fontSize: screenWidth * 0.04,
  selectionColor: AppColors.blueColor,
),
                      Row(
                        children: [
                          SvgPicture.asset(Appimages.filter,height: 31.h,width: 31.w,),
                          SizedBox(width: 11.w),
                          BoldText(
  text: "filter".tr,
  // fontSize: screenWidth * 0.04,
  fontSize: 31.sp,
  selectionColor: AppColors.blueColor,
),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 40.h,),

                  AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
                  SizedBox(height: 20.h,),

  CreateContainer(
    top: -30.h,
    right: 80.w,
    width:180 ,
    height: 70.h,
    arrowh:40 .h,
arrowW: 70.w,
borderW: 1.4.w
,
                   fontsize2: 20.sp,
                    text: "Team Alpha".tr
                  ),
                  SizedBox(height: 30.h,),
                     AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.player2),
                  // SizedBox(height: allPlayersContainerSpacing),
                  SizedBox(height: 20.h,),

                  CreateContainer(
                    textColor: AppColors.purpleColor,
                    borderColor: AppColors.purpleColor,
                    containerColor: AppColors.lightPurpleColor,
                   top: -30.h,
    right: 80.w,
    width:180 ,
    height: 70.h,
    arrowh:40 .h,
arrowW: 70.w,
borderW: 1.4.w,
 fontsize2: 20.sp,
                    text: "team_beta".tr
                  ),

    SizedBox(height: 30.h,),
                   AllPlayersContainer(text: "Sarah Johnson", text2: "Joined 2:35 PM", image: Appimages.prince2),
                  // SizedBox(height: allPlayersContainerSpacing),
                      SizedBox(height: 20.h,),
                  CreateContainer(
                    textColor: AppColors.orangeColor,
                    borderColor: AppColors.orangeColor,
                    containerColor: AppColors.lightOrangeColor.withOpacity(0.5),
                      top: -30.h,
                       fontsize2: 20.sp,
    right: 80.w,
    width:180 ,
    height: 70.h,
    arrowh:40 .h,
arrowW: 70.w,
borderW: 1.4.w,
                    text: "team_gamma".tr
                  ),
                      SizedBox(height: 30.h,),
                  // SizedBox(height: allPlayersContainerSpacing * 2),
                  AllPlayersContainer(text: "Alex Martinez", text2: "Joined 2:35 PM", image: Appimages.play3),
                  // SizedBox(height: allPlayersContainerSpacing),
                      SizedBox(height: 20.h,),
                  CreateContainer(
                        top: -30.h,
                         fontsize2: 20.sp,
    right: 80.w,
    width:180 ,
    height: 70.h,
    arrowh:40 .h,
arrowW: 70.w,
borderW: 1.4.w,
                    text: "team_alpha".tr
                  ),
                  SizedBox(height: 40.h,),
                  TeamDistributionContainer(),
                  SizedBox(height: 50.h,),
                    Center(child: LoginButton(
                    fontSize: 22,
                    text: "add_player".tr, image: Appimages.personadd, ishow: true)),
                    SizedBox(height: 20.h,),
                  // SizedBox(height: allPlayersContainerSpacing),
                  Center(
                    child: LoginButton(
                      onTap: () {
                        // Get.toNamed(RouteName.viewResponsesScreen);
                      },
                      fontSize: 22,
                      text: "view_responses".tr,
                      image: Appimages.eye,
                      color: AppColors.forwardColor,
                      ishow: true,
                    ),
                  ),
                    SizedBox(height: 20.h,),

                  // SizedBox(height: allPlayersContainerSpacing),
                  Center(
                    child: LoginButton(
                      fontSize: 22,
                      text: "send_alert".tr,
                      image: Appimages.noti,
                      color: AppColors.redColor,
                      ishow: true,
                    ),
                  ),
                

                  SizedBox(height: 100,)
                 
                
              ],
            ),
          )

    
      
        ],
      ),
    );
  }
}