import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';

class AdminLgin extends StatelessWidget {
  const AdminLgin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientBackground(child: SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(height: 50.h,),
Padding(
  padding: EdgeInsets.only(left: 50.w,top: 50.h),
  child: InkWell(
    onTap: () => Get.back(),
    child: ForwardButtonContainer(image: Appimages.arrowback,)),
),


Row(
  children: [
    Container(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CreateContainer(),
          Image.asset(
                             Appimages.prince2,
                              width: 472.w,
           height: 641.h,
                             // height: 180 ,
                           ),
        ],
      ),
    ),
  ],
)



      ],
    ))),);
  }
}