import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/create_container.dart';
import 'package:scorer_web/widgets/setting_container.dart';

class CustomAppbar extends StatelessWidget  {
  final VoidCallback?onTap;
  final bool ishow4;
  final bool ishow;
  final bool isShow;
  final double? top;
final double?right;
final double ?height3;
final double?width3;
final double?borderW;
final double?arrowH;
final double?arrowW;
final String?text;
final double?right2;
final bool ishow3;


  CustomAppbar({super.key,  this.ishow=false,   this.isShow=true, this.top, this.right, this.height3, this.width3, this.borderW, this.arrowH, this.arrowW, this.text, this.right2, this.ishow3=false,  this.ishow4=false, this.onTap});

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
                  ishow3?SizedBox():  ishow? Image.asset(Appimages.house1,width: 205.w,height: 156.h,):
                      Row(
                                children: [
                                  SettingContainer(icons: Icons.settings),
                                  SizedBox(width: 6 .w),
                                  SettingContainer(
                                    icons: Icons.notifications,
                                    ishow: true,
                                  ),
                                  SizedBox(width: 6.w),
                                ishow4?SizedBox():  AddOneContainer(
                                  
                                    right2: right2,
                                    top: top,
                                    text: text,
                                    right: right,
                                    height3:height3 ,
                                    width3: width3,
                                    borderW: borderW,
                                    arrowH: arrowH,
                                    arrowW: arrowW,
                                    isShow: isShow,
                                    icon: Icons.add,onTap:onTap),
                                ],
                              ),
                    
                  ],
                ),
              ),
            );
  }
}