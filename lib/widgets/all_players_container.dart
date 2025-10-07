import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/main_text.dart';
import 'package:scorer_web/widgets/useable_container.dart';

class AllPlayersContainer extends StatefulWidget {
  final String text;
  final String text2;
  final String image;
  final String? text3;
  final Color? color;
  final double? width;
  final double? fontSize;
  final double? fontSize2;
  final VoidCallback? onTap;

  const AllPlayersContainer({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
    this.fontSize,
    this.fontSize2,
    this.text3,
    this.color,
    this.width,
    this.onTap,
  });

  @override
  State<AllPlayersContainer> createState() => _AllPlayersContainerState();
}

class _AllPlayersContainerState extends State<AllPlayersContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 800));

    _slideAnimation =
        Tween<Offset>(begin: const Offset(-0.3, 0), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    Future.delayed(const Duration(milliseconds: 150), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: GestureDetector(
          onTap: widget.onTap,
          child: Container(
            width: double.infinity,
            height: 110.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyColor,
                width: 1.7.w,
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        widget.image,
                        width: 58.w,
                        height: 90.h,
                      ),
                      SizedBox(width: 13.w),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainText(
                              text: widget.text,
                              fontSize: widget.fontSize ?? 24.sp,
                              height: 1,
                            ),
                            MainText(
                              text: widget.text2,
                              color: AppColors.teamColor,
                              fontSize: widget.fontSize2 ?? 20.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  UseableContainer(
                    text: widget.text3 ?? "active".tr,
                    color: widget.color ?? AppColors.forwardColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
