// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
// import 'package:scorer_web/components/facilitator_folder/audio_container.dart';
// import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/widgets/bold_text.dart';
// import 'package:scorer_web/widgets/custom_appbar.dart';
// import 'package:scorer_web/widgets/custom_response_container.dart';
// import 'package:scorer_web/widgets/custom_sloder_row.dart';
// import 'package:scorer_web/widgets/custom_stack_image.dart';
// import 'package:scorer_web/widgets/forward_button_container.dart';
// import 'package:scorer_web/widgets/login_button.dart';
// import 'package:scorer_web/widgets/main_text.dart';

// class EvaluateResponseScreen extends StatelessWidget {
//   const EvaluateResponseScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GradientBackground(
//         child: Column(
//           children: [
//             CustomAppbar(ishow: true),
//             SizedBox(height: 56.h),
//              Container(
//               color: AppColors.whiteColor,
//                 width: 794.w,
//                     height: 235.h,
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//           Positioned(
//                     top: 50.h,
//                     left: -40.w,
//                     child: ForwardButtonContainer(
//                       imageH: 20.h,
//                       imageW: 23.5.w,
//                       height1: 90.h,
//                       height2: 65.h,
//                       width1: 90.w,
//                       width2: 65.w,
//                       image: Appimages.arrowback,
//                     ),
//                   ),
//                   Positioned(
//                     top: -140,
//                     right: 312.w,
//                     left: 312.w,
//                     child: CustomStackImage(),
//                   ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//           Center(
//                               child: BoldText(
//                                 text: "Evaluate Response",
//                                 fontSize: 48.sp,
//                                 selectionColor: AppColors.blueColor,
//                               ),
//                             ),
//                   ],
//                 )
//                       ],
//                     ),
//                   ),
//             Container(
//             // height: double.infinity,
//               // height: 1050.h, // ❌ hata diya
//               width: 794.w,
//               decoration: BoxDecoration(
//                 color: AppColors.whiteColor,
//                 borderRadius: BorderRadius.circular(
//                   40.r
//                   // topLeft: Radius.circular(40.r),
//                   // topRight: Radius.circular(40.r),
//                 ),
//               ),
//               child: Column(
//                 // clipBehavior: Clip.none,
//                 children: [
                      
                 
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: 20.w, vertical: 10.h),
//                     child: SingleChildScrollView(
//                       child: Expanded(
//                         child: Column(
//                             mainAxisSize: MainAxisSize.min, // ✅ ye add kia
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                               SizedBox(height: 48.h),
                        
                            
                        
//                               SizedBox(height: 100.h,),
//                                 CustomResponseContainer(
//                           ishow1: false,
//                           containerHeight: 270.h ,
//                           color1: AppColors.yellowColor,
                          
//                           text1: "view_score".tr,
//                           image: Appimages.eye,
//                           text: "pending".tr,
//                           ishow: true,
//                           textColor: AppColors.languageTextColor,
//                         ),
                        
//                         SizedBox(height: 26.h),
//                         Center(
//                           child: BoldText(
//                              text: "relevance_threshold".tr,
                          
//                             fontSize: 34.h,
//                             selectionColor: AppColors.forwardColor,
//                           ),
//                         ),
                        
//                         SizedBox(height: 200.h,),
//                         FeedbackContainer(),
//                         SizedBox(height: 30.h,),
//                             //  AudioContainer()     
//                             //
//                             //    
//                                       AnalysisContainer(),
//                                       SizedBox(height: 30.h,),
//                                        Container(
//                         height: 700 .h,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(26.r),
//                           border: Border.all(color: AppColors.greyColor, width: 1.5 .w),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 17 .w),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 20 .h),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   BoldText(
//                                    text: "team_response".tr,
//                                     fontSize: 28 .sp,
//                                     selectionColor: AppColors.blueColor,
//                                   ),
//                                   SizedBox(height: 25 .h),
//                                   Row(
//                                     children: [
//                                       Image.asset(
//                                         Appimages.timeout2,
//                                         height: 30.h,
//                                         width: 30.w,
//                                       ),
//                                       MainText(
//                                         text: "2 min read",
//                                         fontSize: 24.sp,
//                                         color: AppColors.teamColor,
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               SizedBox(height: 20 .h),
//                               MainText(
//                                 text: "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",
//                                 fontSize: 22.sp,
//                                 height: 1.2,
//                               ),
//                               SizedBox(height: 20 .h),
                            
//                         BoldText(
//                           text: "key_strategies".tr,
//                           fontSize: 28.sp,
//                           selectionColor: AppColors.blueColor,
//                         ),
//                               SizedBox(height: 20 .h),
//                              MainText(
//                           text: "Implement real-time feedback system: Deploy customer feedback tools at every service interaction point to capture immediate responses and identify pain points quickly.".tr,
//                           fontSize: 22 .sp,
//                           height: 1.2,
//                         ),
//                               SizedBox(height: 20 .h),
//                              MainText(
//                           text: "Reduce response time to under 2 hours: Streamline our support processes and implement automated routing to ensure faster resolution of customer inquiries.".tr,
//                           fontSize: 22.sp,
//                           height: 1.2,
//                         ),
//                               SizedBox(height: 20 .h),
//                              MainText(
//                           text: "Enhance self-service capabilities: comprehensive FAQ sections, video tutorials, and chatbot assistance to empower customers to resolve common issues independently.".tr,
//                           fontSize: 22.sp,
//                           height: 1.2,
//                         ),
//                               SizedBox(height: 20 .h),
//                               MainText(
//                           text: "These strategies align with our company's customer-centric approach and will be measured through monthly satisfaction surveys, response time analytics, and self-service adoption rates.".tr,
//                           fontSize: 22.sp,
//                           height: 1.2,
//                         ),
//                             ],
//                           ),
//                         ),
//                                             ),
//                                             SizedBox(height: 20.h,),
//                         Container(
//                         height: 250 .h,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: AppColors.greyColor, width: 1.7 .w),
//                           borderRadius: BorderRadius.circular(26.r),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 17 .w, right: 15 .w),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(height: 20 .h),
//                             BoldText(
//                           text: "scoring_breakdown".tr,
//                           fontSize: 24 .sp,
//                           selectionColor: AppColors.blueColor,
//                         ),
//                               SizedBox(height: 31.h),
//                         CustomSloderRow(
//                           // fontSize: ResponsiveFont.getFontSizeCustom(
//                           //   defaultSize: 13*widthScaleFactor,
//                           //   smallSize: 11*widthScaleFactor
//                           // ),
                        
//                           text: "clarity_specificity".tr, text2: "22/25"),
//                               SizedBox(height: 5 .h),
//                         CustomSloderRow(
//                         //  fontSize: ResponsiveFont.getFontSizeCustom(
//                         //     defaultSize: 13*widthScaleFactor,
//                         //     smallSize: 11*widthScaleFactor
//                         //   ),
                          
//                           text: "strategic_thinking".tr, text2: "22/25"),
//                               SizedBox(height: 5 .h),
//                         CustomSloderRow(
//                           // fontSize: ResponsiveFont.getFontSizeCustom(
//                           //   defaultSize: 13*widthScaleFactor,
//                           //   smallSize: 11*widthScaleFactor
//                           // ),
//                           text: "feasibility".tr, text2: "22/25"),
//                               SizedBox(height: 5 .h),
//                         CustomSloderRow(
                          
//                         // fontSize:  ResponsiveFont.getFontSizeCustom(
//                         // defaultSize:14 *widthScaleFactor,
//                         // smallSize: 11*widthScaleFactor
                        
                        
//                         // ),
                          
//                           text: "innovation".tr, text2: "22/25"),
//                             ],
//                           ),
//                         ),
//                                             ),
//                                             SizedBox(height: 20.h,),
//                         LoginButton(
//                         text:  "accept_ai_score".tr,
//                         // fontSize: 18,
//                         color: AppColors.forwardColor,
//                         image: Appimages.ai2,
//                         ishow: true,
//                         imageHeight: 48 .h,
//                         imageWidth: 42 .w,
                        
//                                             ),
//                                             SizedBox(height: 15 .h),
//                                             LoginButton(
//                         // fontSize: 18,
                          
//                         text:  "manual_overwrite".tr,
//                         ishow: true,
//                         imageHeight:48 .h,
//                         imageWidth: 42 .w,
//                         icon: Icons.edit,
                        
//                                             ),
                                          
                                          
                                           
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
                           
//                 ],
//               ),
//             ),
        
        
//             SizedBox(height: 10.h,)
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/components/facilitator_folder/analysis_container.dart';
import 'package:scorer_web/components/facilitator_folder/feedback_container.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/custom_appbar.dart';
import 'package:scorer_web/widgets/custom_response_container.dart';
import 'package:scorer_web/widgets/custom_sloder_row.dart';
import 'package:scorer_web/widgets/custom_stack_image.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/login_button.dart';
import 'package:scorer_web/widgets/main_text.dart';

class EvaluateResponseScreen extends StatelessWidget {
  const EvaluateResponseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Column(
          children: [
            /// ✅ Fixed Appbar
            CustomAppbar(ishow: true),
            SizedBox(height: 56.h),

            /// ✅ Fixed Top Container
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r)
                ),
              color: AppColors.whiteColor,

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
                    ),
                  ),
                  Positioned(
                    top: -140,
                    right: 312.w,
                    left: 312.w,
                    child: CustomStackImage(),
                  ),
                  Center(
                    child: BoldText(
                      text: "Evaluate Response",
                      fontSize: 48.sp,
                      selectionColor: AppColors.blueColor,
                    ),
                  ),
                ],
              ),
            ),

            /// ✅ Scrollable Area
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
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 48.h),
                  
                        CustomResponseContainer(
                          ishow1: false,
                          containerHeight: 270.h,
                          color1: AppColors.yellowColor,
                          text1: "view_score".tr,
                          image: Appimages.eye,
                          text: "pending".tr,
                          ishow: true,
                          textColor: AppColors.languageTextColor,
                        ),
                  
                        SizedBox(height: 26.h),
                        Center(
                          child: BoldText(
                            text: "relevance_threshold".tr,
                            fontSize: 34.h,
                            selectionColor: AppColors.forwardColor,
                          ),
                        ),
                  
                        SizedBox(height: 200.h),
                        FeedbackContainer(),
                        SizedBox(height: 30.h),
                        AnalysisContainer(),
                        SizedBox(height: 30.h),
                  
                        /// Big Team Response Container
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26.r),
                            border: Border.all(color: AppColors.greyColor, width: 1.5.w),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  BoldText(
                                    text: "team_response".tr,
                                    fontSize: 28.sp,
                                    selectionColor: AppColors.blueColor,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Appimages.timeout2,
                                        height: 30.h,
                                        width: 30.w,
                                      ),
                                      MainText(
                                        text: "2 min read",
                                        fontSize: 24.sp,
                                        color: AppColors.teamColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              MainText(
                                text:
                                    "Primary Objective: Our primary objective is to increase customer satisfaction by 25% through improved service delivery and enhanced user experience across all touchpoints.",
                                fontSize: 22.sp,
                                height: 1.2,
                              ),
                              SizedBox(height: 20.h),
                              BoldText(
                                text: "key_strategies".tr,
                                fontSize: 28.sp,
                                selectionColor: AppColors.blueColor,
                              ),
                              SizedBox(height: 20.h),
                              MainText(
                                text:
                                    "Implement real-time feedback system: Deploy customer feedback tools at every service interaction point to capture immediate responses and identify pain points quickly.".tr,
                                fontSize: 22.sp,
                                height: 1.2,
                              ),
                              SizedBox(height: 20.h),
                              MainText(
                                text:
                                    "Reduce response time to under 2 hours: Streamline our support processes and implement automated routing to ensure faster resolution of customer inquiries.".tr,
                                fontSize: 22.sp,
                                height: 1.2,
                              ),
                              SizedBox(height: 20.h),
                              MainText(
                                text:
                                    "Enhance self-service capabilities: comprehensive FAQ sections, video tutorials, and chatbot assistance to empower customers to resolve common issues independently.".tr,
                                fontSize: 22.sp,
                                height: 1.2,
                              ),
                              SizedBox(height: 20.h),
                              MainText(
                                text:
                                    "These strategies align with our company's customer-centric approach and will be measured through monthly satisfaction surveys, response time analytics, and self-service adoption rates.".tr,
                                fontSize: 22.sp,
                                height: 1.2,
                              ),
                            ],
                          ),
                        ),
                  
                        SizedBox(height: 20.h),
                  
                        /// Scoring Breakdown
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.greyColor, width: 1.7.w),
                            borderRadius: BorderRadius.circular(26.r),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BoldText(
                                text: "scoring_breakdown".tr,
                                fontSize: 24.sp,
                                selectionColor: AppColors.blueColor,
                              ),
                              SizedBox(height: 31.h),
                              CustomSloderRow(text: "clarity_specificity".tr, text2: "22/25"),
                              CustomSloderRow(text: "strategic_thinking".tr, text2: "22/25"),
                              CustomSloderRow(text: "feasibility".tr, text2: "22/25"),
                              CustomSloderRow(text: "innovation".tr, text2: "22/25"),
                            ],
                          ),
                        ),
                  
                        SizedBox(height: 20.h),
                  
                        LoginButton(
                          text: "accept_ai_score".tr,
                          color: AppColors.forwardColor,
                          image: Appimages.ai2,
                          ishow: true,
                          imageHeight: 48.h,
                          imageWidth: 42.w,
                        ),
                        SizedBox(height: 15.h),
                        LoginButton(
                          text: "manual_overwrite".tr,
                          ishow: true,
                          imageHeight: 48.h,
                          imageWidth: 42.w,
                          icon: Icons.edit,
                        ),
                        SizedBox(height: 20.h),
                      ],
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
