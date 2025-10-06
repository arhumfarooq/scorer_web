
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/account_info_column.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_session_Container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_time_row.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
import 'package:scorer_web/components/facilitator_folder/phase_breakdown_container.dart';
import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_dashboard_container.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/useable_container.dart';
import 'package:scorer_web/widgets/useable_text_row.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

class AdminDetailedScreen extends StatelessWidget {
    // final FacilDashboardController controller = Get.put(FacilDashboardController());
 
   
   AdminDetailedScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            /// ✅ Fixed Appbar
            CustomAppbar(),
            SizedBox(height: 56.h),

            /// ✅ Fixed Top Container
            GradientColor(
              height: 200.h,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r)
                  ),
                // color: AppColors.whiteColor,
              
                ),
                // color: AppColors.whiteColor,
                width: 794.w,
                height: 235.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 50.h,
                      left: -40.w,
                      child: ForwardButtonContainer(
                        imageH: 20.h,
                        imageW: 23.5.w,
                        height1: 90.h,
                        height2: 65.h,
                        width1: 90.w,
                        width2: 65.w,
                        image: Appimages.arrowback,
                        onTap: () => Get.back(),
                      ),
                    ),
                    Positioned(
                      top: -140,
                      right: 312.w,
                      left: 312.w,
                      child: CustomStackImage(
                        image: Appimages.prince2,
                        text: "Administrator",
                      ),
                    ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                       Center(
                      child: BoldText(
                        text: "Users Management",
                        fontSize: 48.sp,
                        selectionColor: AppColors.blueColor,
                      ),
                    ),
                     MainText(text: "Securely manage roles, permissions, and\naccess.",fontSize: 22.sp,
                     textAlign: TextAlign.center,
                     )
              
                  ],
                 )
                  ],
                ),
              ),
            ),

            /// ✅ Scrollable Area
            Expanded(
              child: GradientColor(
                child: Container(
                  width: 794.w,
                  decoration: BoxDecoration(
                    // color: AppColors.whiteColor,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      
                            Center(
                              child: Image.asset(
                                Appimages.prince2,
                                width: 197.w ,
                                height: 263.h,
                                fit: BoxFit.contain,
                              ),),
                                BoldText(
                        text: "John Smith",
                        fontSize: 30.sp,
                        selectionColor: AppColors.blueColor,
                      ),
                      MainText(
                        text: "john.smith@company.com",
                        fontSize: 26.sp,
                        height: 1.4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainText(
                                                text: "last_login".tr,
                      
                            fontSize: 26.sp,
                            color: AppColors.redColor,
                          ),
                          SizedBox(width: 3 .w),
                          Container(
                            width: 17.w,
                            height: 17.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.redColor,
                            ),
                          ),
                          SizedBox(width: 3 .w),
                          MainText(
                            text: "Jan 15, 2025",
                            fontSize: 26.sp,
                            color: AppColors.redColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h,),
                      
                        UseableContainer(
                                          text: "active".tr,
                      
                        
                        color: AppColors.forwardColor,
                        // height: 20,
                      ),
                      SizedBox(height: 41.h,),
                      
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 74.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 201.w,
                                height: 223.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7.w),
                                  borderRadius: BorderRadius.circular(46.r),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BoldText(
                                      text: "47",
                                      selectionColor: AppColors.redColor,
                                      fontSize: 46.sp, // sp me convert
                                    ),
                                    BoldText(
                                      textAlign: TextAlign.center,
                                      text: "sessions_led".tr,
                                      fontSize: 30.sp,
                                      selectionColor: AppColors.blueColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Container(
                                width: 201.w,
                                height: 223.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7.w),
                                  borderRadius: BorderRadius.circular(46.r),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BoldText(
                                      text: "285",
                                      selectionColor: AppColors.forwardColor,
                                      fontSize: 46.sp,
                                    ),
                                    BoldText(
                                      textAlign: TextAlign.center,
                                      text: "Manage\nPlayers".tr,
                                      fontSize: 30.sp,
                                      selectionColor: AppColors.blueColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Container(
                                width: 201.w,
                                height: 223.h,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.greyColor, width: 1.7.w),
                                  borderRadius: BorderRadius.circular(46.r),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    BoldText(
                                      text: "96%",
                                      selectionColor: AppColors.redColor,
                                      fontSize: 46.sp,
                                    ),
                                    BoldText(
                                      textAlign: TextAlign.center,
                                      text: "Success\nRate".tr,
                                      fontSize: 30.sp,
                                      selectionColor: AppColors.blueColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h,),
                
                      AccountInfoClumn(),
                      SizedBox(height: 30.h
                      ,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Container(
                                              height: 220.h,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greyColor,width: 1.5),
                          borderRadius: BorderRadius.circular(24)
                                              ),
                                              child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          SizedBox(height: 30.h,),
                          MainText(text: "recent_activity".tr,fontSize: 28.sp,),
                          SizedBox(height: 20.h,),
                          
                           UseableTextrow(
                                        height: 1,
                                              color: AppColors.forwardColor,
                                              text: "Alex submitted response • 1m ago"),
                                              SizedBox(height: 10.h,),
                                               UseableTextrow(
                                        height: 1,
                                              color: AppColors.forwardColor2,
                                              text: "Sarah joined team discussion • 2m ago"),
                                      SizedBox(height: 10.h,),
                          
                                               UseableTextrow(
                                        height: 1,
                                              color: AppColors.forwardColor3,
                                              text: "Mike went inactive • 5m ago"),
                          
                          
                              
                            ],
                          ),
                                              ),
                                            ),
                        ),
                        SizedBox(height: 30.h,),
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 12.w),
                           child: Container(
                                               height: 220.h,
                                               width: double.infinity,
                                               decoration: BoxDecoration(
                                                 border: Border.all(color: AppColors.greyColor,width: 1.5),
                                                 borderRadius: BorderRadius.circular(24)
                                               ),
                                               child: Padding(
                                                 padding: const EdgeInsets.symmetric(horizontal: 20),
                                                 child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           SizedBox(height: 30.h,),
                           MainText(text:  "current_permissions".tr,fontSize: 28.sp,),
                           SizedBox(height:20.h,),
                           
                            UseableTextrow(
                               ishow: true,         height: 1,
                                               color: AppColors.forwardColor,
                                                text: "manage_users".tr,),
                                               SizedBox(height: 10.h,),
                                                UseableTextrow(ishow: true,
                                        height: 1,
                                               color: AppColors.forwardColor2,
                                              text: "create_sessions".tr,),
                                                                                         SizedBox(height: 10.h,),
                
                                                UseableTextrow(ishow: true,
                                        height: 1,
                                               color: AppColors.forwardColor3,
                                                text: "view_analytics".tr,),
                           
                           
                              
                            ],
                                                 ),
                                               ),
                                             ),
                         ),
                         SizedBox(height: 30.h,),
                           BoldText(
                                                         text:  "recent_sessions".tr,
                
                      selectionColor: AppColors.blueColor,
                      fontSize: 30.sp,
                    ),
                
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Column(
                        children: [
                            CustomDashboardContainer(
                              padding: 12.w,
                        mainWidth: double.infinity,
                        right: -30 .w,
                        mainHeight: 470 .h,
                        color2: AppColors.forwardColor,
                        color1: AppColors.orangeColor,
                        heading: "Team Building Workshop",
                        text1: "Phase 2",
                        height: 90.h,
                        text2: "active".tr,
                        text6: "2nd Position",
                        smallImage: Appimages.Crown,
                        description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                        icon1: Icons.play_arrow,
                        text5: "12 Players",
                        isshow: true,
                      ),
                
                      SizedBox(height: 18.h,),
                         CustomDashboardContainer(
                        padding: 12.w,
                        mainWidth: double.infinity,
                        right: -30 .w,
                        mainHeight: 470 .h,
                      color2: AppColors.forwardColor,
                      color1: AppColors.orangeColor,
                      heading: "Team Building Workshop",
                      text1: "Phase 2",
                       height: 90.h,
                      text2: "active".tr,
                      text6: "2nd Position",
                      smallImage: Appimages.Crown,
                      description: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                      icon1: Icons.play_arrow,
                      text5: "12 Players",
                      isshow: true,
                    ),
                        ],
                      ),
                    ),
                   
                    
                      
                      
                      SizedBox(
                        height: 100,
                      )
                                      
                                   
                       
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
