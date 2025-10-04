import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/language_selection_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/language_selection_container.dart';
import 'package:scorer_web/widgets/main_text.dart';

class StartScreen extends StatelessWidget {
  final controller = Get.put(LanguageSelectionController());

   StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientBackground(child: SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(left: 220.w,right: 160.w,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
        
            Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                        Appimages.splash,
                        height: 350.h,
                        width: 400.w,
                      ),
              
                      Center(
                        child: Container(
                          height: 846.h,
                          width: 686.w
                          ,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            // border: Border.all()
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Padding(
                            // padding: const EdgeInsets.all(8.0),
                                 padding:  EdgeInsets.symmetric(horizontal: 32.w,vertical: 32.h),

                            child: Column(
                              children: [
                                SvgPicture.asset(Appimages.language,
                                width: 37.33.w,height: 37.33.h,
                                ),
                                MainText(text: "Select Language",fontSize: 25.sp,),
                                SizedBox(height: 20.h,),
                                          
                                          
                                 LanguageSelectionContainer(
                                                                 text: "English",
                                                                 image: Appimages.uk,
                                                                 isSelected: controller.selectLangauge.value == 0,
                                                                 onTap: () => controller.select(0),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "Spanish",
                                                                 image: Appimages.spain,
                                                                 isSelected: controller.selectLangauge.value == 1,
                                                                 onTap: () => controller.select(1),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "French",
                                                                 image: Appimages.france,
                                                                 isSelected: controller.selectLangauge.value == 2,
                                                                 onTap: () => controller.select(2),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "Germany",
                                                                 image: Appimages.germany,
                                                                 isSelected: controller.selectLangauge.value == 3,
                                                                 onTap: () => controller.select(3),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "Italy",
                                                                 image: Appimages.italy,
                                                                 isSelected: controller.selectLangauge.value == 4,
                                                                 onTap: () => controller.select(4),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "Arabic",
                                                                 image: Appimages.saudi,
                                                                 isSelected: controller.selectLangauge.value == 5,
                                                                 onTap: () => controller.select(5),
                                 ),
                                 SizedBox(height: 9 ),
                                 LanguageSelectionContainer(
                                                                 text: "South Africa",
                                                                 image: Appimages.southAfrica,
                                                                 isSelected: controller.selectLangauge.value == 6,
                                                                 onTap: () => controller.select(6),
                                 ),
                                 SizedBox(height: 24.h,),

                                 ForwardButtonContainer(
                                     onTap: () {
                              Get.toNamed(RouteName.startScreen1);
                            },
                                 )
                              
                              ],
                            ),
                          ),
                        ),
                      )
                ],
              ),
            ),
        
          ],
        ),
      ),
    ),),);
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/controller/language_selection_controller.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/language_selection_container.dart';
// import 'package:scorer_web/widgets/main_text.dart';

// class StartScreen extends StatelessWidget {
//   final controller = Get.put(LanguageSelectionController());

//   StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Initialize ScreenUtil with your mobile base size
//     ScreenUtil.init(
//       context,
//       designSize: const Size(402, 874),
//       minTextAdapt: true,
//       splitScreenMode: true,
//     );

//     return Scaffold(
//       body: GradientBackground(
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.only(left: 20.w, right: 20.w),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SvgPicture.asset(
//                           Appimages.splash,
//                           height: 200.h,
//                           width: 200.w,
//                         ),
//                         SizedBox(width: 20.w),
//                         Container(
//                           height: 700.h,
//                           width: 300.w,
//                           decoration: BoxDecoration(
//                             color: AppColors.whiteColor,
//                             borderRadius: BorderRadius.circular(20.r),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//                             child: Column(
//                               children: [
//                                 SvgPicture.asset(
//                                   Appimages.language,
//                                   width: 30.w,
//                                   height: 30.h,
//                                 ),
//                                 MainText(
//                                   text: "Select Language",
//                                   fontSize: 18.sp,
//                                 ),
//                                 SizedBox(height: 15.h),
//                                 LanguageSelectionContainer(
//                                   text: "English",
//                                   image: Appimages.uk,
//                                   isSelected: controller.selectLangauge.value == 0,
//                                   onTap: () => controller.select(0),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "Spanish",
//                                   image: Appimages.spain,
//                                   isSelected: controller.selectLangauge.value == 1,
//                                   onTap: () => controller.select(1),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "French",
//                                   image: Appimages.france,
//                                   isSelected: controller.selectLangauge.value == 2,
//                                   onTap: () => controller.select(2),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "Germany",
//                                   image: Appimages.germany,
//                                   isSelected: controller.selectLangauge.value == 3,
//                                   onTap: () => controller.select(3),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "Italy",
//                                   image: Appimages.italy,
//                                   isSelected: controller.selectLangauge.value == 4,
//                                   onTap: () => controller.select(4),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "Arabic",
//                                   image: Appimages.saudi,
//                                   isSelected: controller.selectLangauge.value == 5,
//                                   onTap: () => controller.select(5),
//                                 ),
//                                 SizedBox(height: 8.h),
//                                 LanguageSelectionContainer(
//                                   text: "South Africa",
//                                   image: Appimages.southAfrica,
//                                   isSelected: controller.selectLangauge.value == 6,
//                                   onTap: () => controller.select(6),
//                                 ),
//                                 SizedBox(height: 20.h),
//                                 ForwardButtonContainer(),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
