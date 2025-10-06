import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';

class LeaderStackContainer extends StatefulWidget {
  const LeaderStackContainer({super.key});

  @override
  State<LeaderStackContainer> createState() => _LeaderStackContainerState();
}

class _LeaderStackContainerState extends State<LeaderStackContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: isExpanded ? 200.w : 25.w, // Responsive width
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              bottomLeft: Radius.circular(16.r),
            ),
            color: AppColors.forwardColor,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// 👑 King Icon — appears only when expanded
              if (isExpanded)
                Positioned(
                  top: -45.h,
                  left: -55.w,
                  child: SvgPicture.asset(
                    Appimages.king,
                    width: 120.w,
                    height: 120.h,
                  ),
                ),

              /// 🧾 Text + Points Section
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isExpanded)
                    Padding(
                      padding: EdgeInsets.only(left: 25.w, bottom: 4.h),
                      child: MainText(
                        text: "Leaderboard",
                        fontFamily: "gotham",
                        fontSize: 20.sp,
                        color: AppColors.whiteColor,
                        height: 0,
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (isExpanded)
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: AppColors.arrowColor,
                          size: 22.sp,
                        ),
                      if (isExpanded)
                        MainText(
                          text: "Top Rank",
                          fontFamily: "gotham",
                          fontSize: 18.sp,
                          color: AppColors.whiteColor,
                          height: 0,
                        ),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
