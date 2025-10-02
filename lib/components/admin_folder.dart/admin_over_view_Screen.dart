// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/components/admin_folder.dart/admin_new_session_container.dart';
// import 'package:scorer_web/components/facilitator_folder/engagement_Container.dart';
// import 'package:scorer_web/components/facilitator_folder/new_session_container.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/useable_text_row.dart';

// class AdminOverViewScreen extends StatelessWidget {
//   const AdminOverViewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScrollConfiguration(
//        behavior: ScrollConfiguration.of(context).copyWith(
//     scrollbars: false, // ✅ ye side wali scrollbar hatayega
//   ),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//         SizedBox(height: 50.h,),
//       Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 25.w),
      
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             BoldText(text: "Session Information",selectionColor: AppColors.blueColor,fontSize: 32.sp,),
//         MainText(
//           fontSize: 26.sp,
//           text: "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression."),
         
//         ],
//       ),
//       ) ,
//       SizedBox(height: 40.h,),
//         EngagementContainer(),
//         SizedBox(height: 40.h,),
//         AdminNewSessionContainer(),
//         SizedBox(height: 40.h,),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16 .w),
//             child: Column(
//               children: [
//                 Container(
//                   width: double.infinity, 
//                   height: 300, 
//                   decoration: BoxDecoration(
//                     border: Border.all(color: AppColors.greyColor, width: 1.7 .w),
//                     borderRadius: BorderRadius.circular(24 .r),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 20 .w, 
//                       vertical: 16 .h, 
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         BoldText(
//                         text: "system_activity".tr,
//                           selectionColor: AppColors.blueColor,
//                           fontSize: 32.sp, 
//                         ),
//                         SizedBox(height: 10 .h),
//                         UseableTextrow(
//                           color: AppColors.forwardColor,
//                           text: "Alex joined session",
                          
//                         ),
//                         SizedBox(height: 2 .h),
//                         UseableTextrow(
//                           color: AppColors.forwardColor2,
//                           text: "Phase 2 auto-started",
                          
//                         ),
//                         SizedBox(height: 2 .h),
//                         UseableTextrow(
//                           color: AppColors.forwardColor3,
//                           text: "Connection timeout: Mike",
                          
//                         ),
//                         SizedBox(height: 2 .h),
//                         UseableTextrow(
//                           color: AppColors.forwardColor3,
//                           text: "Mike went inactive • 5m ago",
                          
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),)
        
      
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/admin_new_session_container.dart';
import 'package:scorer_web/components/facilitator_folder/engagement_Container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_text_row.dart';

class AdminOverViewScreen extends StatelessWidget {
  const AdminOverViewScreen({super.key});

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
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w), // ✅ yaha fix
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(
                    text: "Session Information",
                    selectionColor: AppColors.blueColor,
                    fontSize: 32.sp,
                  ),
                  MainText(
                    fontSize: 26.sp,
                    text:
                        "Eranove Odyssey sessions immerse teams in fast-paced, collaborative challenges with real-time scoring and progression.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            EngagementContainer(),
            SizedBox(height: 40.h),
            AdminNewSessionContainer(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.greyColor, width: 1.7.w),
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 16.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h,),
                          BoldText(
                            text: "system_activity".tr,
                            selectionColor: AppColors.blueColor,
                            fontSize: 32.sp,
                          ),
                          SizedBox(height: 10.h),
                          UseableTextrow(
                            color: AppColors.forwardColor,
                            text: "Alex joined session",
                          ),
                          SizedBox(height: 10.h),
                          UseableTextrow(
                            color: AppColors.forwardColor2,
                            text: "Phase 2 auto-started",
                          ),
                          // SizedBox(height: 2.h),\
                          SizedBox(height: 10.h),

                          UseableTextrow(
                            color: AppColors.forwardColor3,
                            text: "Connection timeout: Mike",
                          ),
                          // SizedBox(height: 2.h),
                          SizedBox(height: 10.h),

                          UseableTextrow(
                            color: AppColors.forwardColor3,
                            text: "Mike went inactive • 5m ago",
                          ),
                        ],
                      ),
                    ),
                  ),

                     SizedBox(height: 22 .h),
              
LoginButton(
  text: "export_by_phase".tr,
  ishow: true,
  image: Appimages.export,
  // fontSize: 18,
),
SizedBox(height: 9 .h),
LoginButton(
  text: "export_by_team".tr,
  ishow: true,
  image: Appimages.export,
  color: AppColors.redColor,

),
SizedBox(height: 9 .h),
LoginButton(
  text: "export_by_player".tr,
  ishow: true,
  image: Appimages.export,
  color: AppColors.forwardColor,
  // fontSize: 18,
),                SizedBox(height: 44 .h),
             
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
