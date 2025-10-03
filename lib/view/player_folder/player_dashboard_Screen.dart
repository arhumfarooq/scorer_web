import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
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
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';

// class PlayerDashboardScreen extends StatelessWidget {
//    final FacilDashboardController controller = Get.put(FacilDashboardController());
//    PlayerDashboardScreen({super.key});
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child:  SingleChildScrollView(
//         child: Column(children: [
//           CustomAppbar(ishow4: true,),
//             SizedBox(height: 56.h,),
//               Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40.r),
//                   topRight: Radius.circular(40.r)
//                 ),
//               color: AppColors.whiteColor,

//               ),
//               // color: AppColors.whiteColor,
//               width: 794.w,
//               height: 235.h,
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
               
//                   Positioned(
//                     top: -140,
//                     right: 312.w,
//                     left: 312.w,
//                     child: CustomStackImage(
//                       image: Appimages.prince2,
//                       text: "Administrator",
//                     ),
//                   ),
//                Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                      Center(
//                     child: BoldText(
//                       text: "Welcome to Score’Master+!",
//                       fontSize: 48.sp,
//                       selectionColor: AppColors.blueColor,
//                     ),
//                   ),
//                    MainText(text: "ou’re all set to join a session. Enter your session\ncode or wait for your facilitator to start the game.",fontSize: 22.sp,textAlign: TextAlign.center,)

//                 ],
//                )
//                 ],
//               ),
//             ),
          
      
//          Expanded(
//            child: Container(
//             // height: 1050.h,
//             width: 794.w,
//             decoration: BoxDecoration(
//               color: AppColors.whiteColor,
//               borderRadius: BorderRadius.only(
//                    topLeft: Radius.circular(40.r),
//                    topRight: Radius.circular(40.r),
//               ),
//             ),
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                    Positioned(
//             top: -140,
//             right: 312.w,
//             left: 312.w,
//             child: CustomStackImage(
//               image: Appimages.player2,
//               text: "Player",
//             ),
//                    ),
//                    Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 48.h),
//                 Center(
//                   child: BoldText(
//                     text: "Welcome to Score’Master+!",
//                     fontSize: 48.sp,
//                     selectionColor: AppColors.blueColor,
//                   ),
//                 ),
//                 Center(
//                   child: MainText(
//                     fontSize: 22.sp,
//                     textAlign: TextAlign.center,
//                     text: "ou’re all set to join a session. Enter your session\ncode or wait for your facilitator to start the game.",
//                   ),
//                 ),
//                 SizedBox(height: 45.h),
           
//                     Container(
//                       height: 100.h,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(26 .r),
//                         border: Border.all(
//                             color: AppColors.greyColor,
//                             width: 1.5 .w),
//                       ),
//                       child: Stack(
//                         clipBehavior: Clip.none,
//                         children: [
//                           Positioned(
//                             top: -20 .h,
//                             right: 0,
//                             child: CreateContainer(
//              text: "join_with_code".tr,
//              width: 186 .w,
//            ),
//                           ),
//                         Center(
//              child: BoldText(
//                text: "enter_code".tr,
//                fontSize: 22 .sp,
//              ),
//            ),
//                         ],
//                       ),
//                     ),
                  
                       
                    
//               ],
//             ),
//                    ),
//               ],
//             ),
//                    ),
//          ),
        
        
        
          
          
//           ],),
//       ),)),
//     );
//   }
// }
class PlayerDashboardScreen extends StatelessWidget {
  final FacilDashboardController controller =
      Get.put(FacilDashboardController());

  PlayerDashboardScreen({super.key});

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
                            text: "Welcome to Score’Master+!",
                            fontSize: 48.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                        ),
                        MainText(
                          text:
                              "You’re all set to join a session. Enter your session\ncode or wait for your facilitator to start the game.",
                          fontSize: 22.sp,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              /// Expanded scrollable part
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: 794.w,
                                   decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r)
                  ),
                ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 48.h),
                       
                          Container(
                            height: 100.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26.r),
                              border: Border.all(
                                color: AppColors.greyColor,
                                width: 1.5.w,
                              ),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -20.h,
                                  right: 20,
                                  child: CreateContainer(
                                    arrowW: 35.w,
                                    arrowh: 40.h,
                                    top: -40.h,
                                    text: "join_with_code".tr,
                                    width: 387.w,height: 64.h,
                                    borderW: 2.9.w,
                                  ),
                                ),
                                Center(
                                  child: BoldText(
                                    text: "enter_code".tr,
                                    fontSize: 42.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),

SizedBox(height: 40.h,),
                           CustomDashboardContainer(
                      // onTap: ()=>Get.toNamed(RouteName.playerLoginPlaySide),
          
arrowshow: false,
horizontal: 0,
          
          // width2: 78,
          color2: AppColors.scheColor,
          heading: "Eranove Odyssey – Team A",
          text1: "Phase 2",
          ishow: false,
          text2: "Scheduled",
          description: "Leadership Assessment strengthens teamwork through interactive activities.",

          
          text3: "paused".tr,
          text7:"join_session".tr,
          icon3: Icons.fast_forward,
          color3: AppColors.forwardColor,
          text5: "12 Players",
          text6: "Starts in 2h",
        ),
        SizedBox(height: 12 .h),
         CustomDashboardContainer(
                      // onTap: ()=>Get.toNamed(RouteName.playerLoginPlaySide),
          
arrowshow: false,
horizontal: 0,
          
          // width2: 78,
          color2: AppColors.scheColor,
          heading: "Eranove Odyssey – Team A",
          text1: "Phase 2",
          ishow: false,
          text2: "scheduled".tr,
          description: "Leadership Assessment strengthens teamwork through interactive activities.",

          
          text3: "Pause",
         text7: "join_session".tr,
          icon3: Icons.fast_forward,
          color3: AppColors.forwardColor,
          text5: "12 Players",
          text6: "Starts in 2h",
        ),
                        ],
                      ),
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
