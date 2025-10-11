// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/widgets/add_one_Container.dart';
// import 'package:scorer_web/widgets/create_container.dart';
// import 'package:scorer_web/widgets/setting_container.dart';

// class CustomAppbar extends StatelessWidget  {
//   final VoidCallback?onTap;
//   final bool ishow4;
//   final bool ishow;
//   final bool isShow;
//   final double? top;
// final double?right;
// final double ?height3;
// final double?width3;
// final double?borderW;
// final double?arrowH;
// final double?arrowW;
// final String?text;
// final double?right2;
// final bool ishow3;


//   CustomAppbar({super.key,  this.ishow=false,   this.isShow=true, this.top, this.right, this.height3, this.width3, this.borderW, this.arrowH, this.arrowW, this.text, this.right2, this.ishow3=false,  this.ishow4=false, this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//               width: double.infinity.w,
//               height: 187.h,
//               color: AppColors.whiteColor,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 175.w,right: 127.w),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     SvgPicture.asset(Appimages.splash,width: 136.w,height: 118.h,),
//                   ishow3?SizedBox():  ishow? Image.asset(Appimages.house1,width: 205.w,height: 156.h,):
//                       Row(
//                                 children: [
//                                   SettingContainer(icons: Icons.settings),
//                                   SizedBox(width: 6 .w),
//                                   SettingContainer(
//                                     icons: Icons.notifications,
//                                     ishow: true,
//                                   ),
//                                   SizedBox(width: 6.w),
//                                 ishow4?SizedBox():  AddOneContainer(
                                  
//                                     right2: right2,
//                                     top: top,
//                                     text: text,
//                                     right: right,
//                                     height3:height3 ,
//                                     width3: width3,
//                                     borderW: borderW,
//                                     arrowH: arrowH,
//                                     arrowW: arrowW,
//                                     isShow: isShow,
//                                     icon: Icons.add,onTap:onTap),
//                                 ],
//                               ),
                    
//                   ],
//                 ),
//               ),
//             );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/add_one_Container.dart';
import 'package:scorer_web/widgets/setting_container.dart';

class CustomAppbar extends StatefulWidget {
  final VoidCallback? onTap;
  final bool ishow4;
  final bool ishow;
  final bool isShow;
  final double? top;
  final double? right;
  final double? height3;
  final double? width3;
  final double? borderW;
  final double? arrowH;
  final double? arrowW;
  final String? text;
  final double? right2;
  final bool ishow3;
  final double ?padding1;

  const CustomAppbar({
    super.key,
    this.ishow = false,
    this.isShow = true,
    this.top,
    this.right,
    this.height3,
    this.width3,
    this.borderW,
    this.arrowH,
    this.arrowW,
    this.text,
    this.right2,
    this.ishow3 = false,
    this.ishow4 = false,
    this.onTap, this.padding1,
  });

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar>
    with TickerProviderStateMixin {
  late AnimationController _leftController;
  late AnimationController _rightController;
  late Animation<Offset> _leftSlide;
  late Animation<Offset> _rightSlide;
  late Animation<double> _leftFade;
  late Animation<double> _rightFade;

  @override
  void initState() {
    super.initState();

    _leftController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _rightController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _leftSlide = Tween<Offset>(
      begin: const Offset(-0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _leftController, curve: Curves.easeOut));

    _rightSlide = Tween<Offset>(
      begin: const Offset(0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _rightController, curve: Curves.easeOut));

    _leftFade = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _leftController, curve: Curves.easeInOut));
    _rightFade = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _rightController, curve: Curves.easeInOut));

    _leftController.forward();
    Future.delayed(const Duration(milliseconds: 150),
        () => _rightController.forward());
  }

  @override
  void dispose() {
    _leftController.dispose();
    _rightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 187.h,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.only(left: 175.w, right: 127.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Left side (Logo animation)
            SlideTransition(
              position: _leftSlide,
              child: FadeTransition(
                opacity: _leftFade,
                child: SvgPicture.asset(
                  Appimages.splash,
                  width: 136.w,
                  height: 118.h,
                ),
              ),
            ),

            /// Right side (Icons animation)
            SlideTransition(
              position: _rightSlide,
              child: FadeTransition(
                opacity: _rightFade,
                child: widget.ishow3
                    ? const SizedBox()
                    : widget.ishow
                        ? Image.asset(
                            Appimages.house1,
                            width: 205.w,
                            height: 156.h,
                          )
                        : Row(
                            children: [
                              SettingContainer(icons: Icons.settings),
                              SizedBox(width: 6.w),
                              SettingContainer(
                                icons: Icons.notifications,
                                ishow: true,
                              ),
                              SizedBox(width: 6.w),
                              widget.ishow4
                                  ? const SizedBox()
                                  : AddOneContainer(
                                    padding1:widget.padding1,
                                      right2: widget.right2,
                                      top: widget.top,
                                      text: widget.text,
                                      right: widget.right,
                                      height3: widget.height3,
                                      width3: widget.width3,
                                      borderW: widget.borderW,
                                      arrowH: widget.arrowH,
                                      arrowW: widget.arrowW,
                                      isShow: widget.isShow,
                                      icon: Icons.add,
                                      onTap: widget.onTap,
                                    ),
                            ],
                          ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
