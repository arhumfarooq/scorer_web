import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/setting_container.dart';

class CustomAppbar extends StatelessWidget {
  final bool ishow;
  final bool isShow;
  const CustomAppbar({super.key,  this.ishow=false,   this.isShow=true});

  @override
  Widget build(BuildContext context) {
    return  Container(
              width: double.infinity.w,
              height: 187.h,
              color: AppColors.whiteColor,
              child: Padding(
                padding: EdgeInsets.only(left: 175.w,right: 127.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Appimages.splash,width: 136.w,height: 118.h,),
                    ishow? Image.asset(Appimages.house1,width: 205.w,height: 156.h,):
                      Row(
                                children: [
                                  SettingContainer(icons: Icons.settings),
                                  SizedBox(width: 6 .w),
                                  SettingContainer(
                                    icons: Icons.notifications,
                                    ishow: true,
                                  ),
                                  SizedBox(width: 6.w),
                                  AddOneContainer(
                                    isShow: isShow,
                                    icon: Icons.add,onTap: () {
                                    // Get.toNamed(RouteName.createNewSessionScreen);
                                  },),
                                ],
                              ),
                    
                  ],
                ),
              ),
            );
  }
}