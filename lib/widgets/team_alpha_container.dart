import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/main_text.dart';

class TeamAlphaContainer extends StatefulWidget {
  const TeamAlphaContainer({super.key});

  @override
  _TeamAlphaContainerState createState() => _TeamAlphaContainerState();
}

class _TeamAlphaContainerState extends State<TeamAlphaContainer> {
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
          width: isExpanded ? 200.w : 20.w, // width responsive
          height: 80.h, // height responsive
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
            color: AppColors.forwardColor,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              if (isExpanded)
                Positioned(
                  top: -50.h,
                  left: -60.w,
                  child: Image.asset(
                    Appimages.man3,
                    width: 135.w,
                    height: 135.h,
                  ),
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isExpanded)
                    Padding(
                      padding: EdgeInsets.only(left: 18.w, top: 5.h),
                      child: MainText(
                        text: "Team Alpha",
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
                          size: 20.sp,
                        ),
                      if (isExpanded)
                        MainText(
                          text: "2,890 pts",
                          fontFamily: "gotham",
                          fontSize: 20.sp,
                          height: 0,
                        ),
                      SizedBox(width: 8.w),
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
