
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/user_administrate_side.dart';
import 'package:scorer_web/components/admin_folder.dart/user_facilitate_side.dart';
import 'package:scorer_web/components/admin_folder.dart/user_management_stack_container.dart';
import 'package:scorer_web/components/admin_folder.dart/user_player_side_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/active_Session_screen.dart';
import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_session_Container.dart';
import 'package:scorer_web/components/facilitator_folder/custom_time_row.dart';
import 'package:scorer_web/components/facilitator_folder/facil_dashBoard_stack_container.dart';
import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
import 'package:scorer_web/components/facilitator_folder/phase_breakdown_container.dart';
import 'package:scorer_web/components/facilitator_folder/players_Row.dart';
import 'package:scorer_web/components/facilitator_folder/schedule_Screen.dart';
import 'package:scorer_web/components/facilitator_folder/view_response_stack_container.dart';
import 'package:scorer_web/components/responsive_fonts.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/facil_dashboard_controller.dart';
import 'package:scorer_web/controller/stage_controller.dart';
import 'package:scorer_web/controller/user_management_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/gradient_color.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/players_containers.dart';
import 'package:scorer_web/widgets/useable_container.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

class UserManagemnetScreen extends StatelessWidget {
  //  final StageController controller1=Get.put(StageController());
    final UserManagmentController controller = Get.put(UserManagmentController());
   final List<String> tabs = [
  "players".tr,
  "facilitator".tr,
  "administrator".tr,
];
  final List<Widget> screens = [
    UserPlayerSideScreen(),
    UserFacilitateSide(),
    UserAdministrateSide(),
  ];
   UserManagemnetScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      children: [
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
                    // Positioned(
                    //   top: 50.h,
                    //   left: -40.w,
                    //   child: ForwardButtonContainer(
                    //     imageH: 20.h,
                    //     imageW: 23.5.w,
                    //     height1: 90.h,
                    //     height2: 65.h,
                    //     width1: 90.w,
                    //     width2: 65.w,
                    //     image: Appimages.arrowback,
                    //   ),
                    // ),
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
                     MainText(text: "Securely manage roles, permissions, and\naccess.",fontSize: 22.sp,textAlign: TextAlign.center,)
              
                  ],
                 )
                  ],
                ),
              ),
            ),

            /// ✅ Scrollable Area
            Expanded(
              child: GradientColor(
                ishow: false,
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //  FacilDashBoardStackContainer(controller: controller),
                        SizedBox(height: 20.h),
                                      //  Expanded(child: Obx(() => screens[controller.selectedIndex.value])),
                                       Container(
                                width: double.infinity,
                                height: 100.h ,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  border: Border.all(color: AppColors.searchBorder, width: 2.7.w),
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: TextFormField(
                                  cursorColor: AppColors.blackColor,
                                  decoration: InputDecoration(
                                    
                                   hintText: "search_players".tr,
                                  
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(left: 10 .w),
                                      child: Icon(Icons.search, color: AppColors.forwardColor,size: 50.sp,),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25 .r),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintStyle: TextStyle(fontSize: 30 .sp),
                                  ),
                                ),
                              ),
                      
                      //                           Obx(() {
                      //   double screenWidth = 1.sw;
                      //   double totalWidth = screenWidth - 64.w; // ✅ margin ka calculation sahi
                      //   double tabWidth = totalWidth / tabs.length;
                      //   double left = controller.selectedIndex.value * tabWidth;
                      
                      //   return UserManagementStackContainer(
                      //     totalWidth: totalWidth,
                      //     left: left,
                      //     tabWidth: tabWidth,
                      //     tabs: tabs,
                      //     controller: controller,
                      //   );
                      // }),
                      SizedBox(height: 30.h,),
                      
                         ViewResponseStackContainer(
                                  controller: controller, tabs: tabs),
                             
                               Obx(
                        () => screens[controller.selectedIndex.value],
                      ),
                        
                             
                        
                         
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
      ],
    ));
    
    
//      Scaffold(
//       body: GradientBackground(
//         child: Column(
//           children: [
//             /// ✅ Fixed Appbar
//             CustomAppbar(
// isShow: true,
// onTap: () {
//   Get.toNamed(RouteName.createNewSessionHeader);
// },

//             ),
//             SizedBox(height: 56.h),

          
//           ],
//         ),
//       ),
//     );
  }
}
