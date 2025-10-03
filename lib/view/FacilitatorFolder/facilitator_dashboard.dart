// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
// import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
// import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/controller/facil_dashboard_controller.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/add_one_Container.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/create_container.dart';
// import 'package:scorer_web/widgets/custom_appbar.dart';
// import 'package:scorer_web/widgets/custom_stack_image.dart';
// import 'package:scorer_web/widgets/main_text.dart';
// import 'package:scorer_web/widgets/setting_container.dart';

// class FacilitatorDashboard extends StatelessWidget {
//    final FacilDashboardController controller = Get.put(FacilDashboardController());
//    FacilitatorDashboard({super.key});
//      final List<Widget> screens = [
//     ActiveSessionScreen(),
//     ScheduleScreen()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(child: SafeArea(child:  SingleChildScrollView(
//         child: Column(children: [
//           CustomAppbar(),
//             SizedBox(height: 56.h,),
//                Container(
//                 width: 794.w,
//                 height: 235.h,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40.r),
//                     topRight: Radius.circular(40.r),
//                   ),
//                   color: AppColors.whiteColor,
//                 ),
//                 child: Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     Positioned(
//                       top: -140,
//                       right: 312.w,
//                       left: 312.w,
//                       child: CustomStackImage(
                       
//                       ),
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Center(
//                           child: BoldText(
//                              text: "Welcome back, Adam!",
//                             fontSize: 48.sp,
//                             selectionColor: AppColors.blueColor,
//                           ),
//                         ),
//                          Center(
//                   child: MainText(
//                     fontSize: 22.sp,
//                     textAlign: TextAlign.center,
//                     text: "You’ve just entered a company in crisis. Every\ndecision you make could change its future.",
//                   ),
//                 ),
                      
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

          
      
//          Expanded(
//            child: Container(
                 
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
                
//                    Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // SizedBox(height: 48.h),
              
           
//                 SizedBox(height: 45.h),
           
//                          FacilDashBoardStackContainer(controller: controller),
                    
//                 /// 👇 Ab yahan direct screen load karo
//                 SizedBox(height: 20.h),
//                  Expanded(child: Obx(() => screens[controller.selectedIndex.value])),
                  
                       
                    
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
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/login_textfield.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/setting_container.dart';


class FacilitatorDashboard extends StatelessWidget {
    final FacilDashboardController controller = Get.put(FacilDashboardController());
   FacilitatorDashboard({super.key});
     final List<Widget> screens = [
    ActiveSessionScreen(),
    ScheduleScreen()
  ];


  // FacilitatorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            children: [
         CustomAppbar(),
            SizedBox(height: 56.h,),
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
                       
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: BoldText(
                             text: "Welcome back, Adam!",
                            fontSize: 48.sp,
                            selectionColor: AppColors.blueColor,
                          ),
                        ),
                         Center(
                  child: MainText(
                    fontSize: 22.sp,
                    textAlign: TextAlign.center,
                    text: "You’ve just entered a company in crisis. Every\ndecision you make could change its future.",
                  ),
                ),
                      
                      ],
                    ),
                  ],
                ),
              ),

         
                 Expanded(
              child: Container(
                width: 794.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r)
                  ),
                ),
                child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
    scrollbars: false, // ✅ ye side wali scrollbar hatayega
  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       FacilDashBoardStackContainer(controller: controller),
                  SizedBox(height: 20.h),
                                 Expanded(child: Obx(() => screens[controller.selectedIndex.value])),
                  
                       
                  
                   
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
