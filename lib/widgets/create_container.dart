// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
// // import 'package:scorer/constants/appcolors.dart';
// // import 'package:scorer/constants/appimages.dart';
// // import 'package:scorer/widgets/main_text.dart';

// // class CreateContainer extends StatelessWidget {
// //   const CreateContainer({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
// //         Container(
// //           width: 69,
// //           height: 31,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(80),
// //             color: AppColors.createColor,
// //             border: Border.all(color: AppColors.createBorderColor,width: 1)  
// //           ),
// //           child: MainText(text: "Create",fontFamily: "gotham",fontSize: 16,color: AppColors.createBorderColor,)
// //         ),
// //           Positioned(
// //             top: -0.6,
// //             right: -0.1,
// //             child: SvgPicture.asset(Appimages.arrowdown))
// //       ],
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/widgets/main_text.dart';

// class CreateContainer extends StatelessWidget {
//   final String?text;
//   final double? height;
//   final Color? borderColor;
//   final Color?containerColor;
//   final Color?textColor;
//   final double? width;
//   final double? right;
//   final bool ishow;
//   const CreateContainer({super.key, this.text, this.height, this.width, this.borderColor, this.containerColor, this.textColor, this.right, this.ishow=true});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none, // arrow ko bahar allow karega
//       children: [
//         // Create button
//         Container(
//           width:width?? 70,
//           height:height?? 36,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(80),
//             color:containerColor?? AppColors.createColor,
//             border: Border.all(
//               color:borderColor?? AppColors.createBorderColor,
//               width: 2,
//             ),
//           ),
//           child: Center(
//             child: MainText(
//               text:text?? "Create",
//               fontFamily: "gotham",
//               fontSize: 14,
              
//               color:textColor?? AppColors.createBorderColor,
//             ),
//           ),
//         ),

//         // Arrow above button
//        ishow? Positioned(
//           top: -16, // jitna upar le jana hai adjust karo
//           right: right??-1, // arrow ka horizontal position
//           child: SvgPicture.asset(
//             Appimages.arrowdown,
//             height: 22,
//             width: 20,
//           ),
//         ):SizedBox()
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/constants/appimages.dart';

class CreateContainer extends StatelessWidget {
  final String? text;
  final double? height;
  final Color? borderColor;
  final Color? containerColor;
  final Color? textColor;
  final double? width;
  final double? right;
  final double? top;
  final double?fontsize2;

  final bool ishow;
  const CreateContainer({
    super.key,
    this.text,
    this.height,
    this.width,
    this.borderColor,
    this.containerColor,
    this.textColor,
    this.right,
    this.ishow = true, this.top, this.fontsize2,
  });

  @override
  Widget build(BuildContext context) {
  
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: (width ?? 431).w,
          height: (height ?? 100) .h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: containerColor ?? AppColors.createColor,
            border: Border.all(
              color: borderColor ?? AppColors.createBorderColor,
              width: 2 .w
            ),
          ),
          child: Center(
            child: FittedBox(
  fit: BoxFit.scaleDown, // 🔹 text ko shrink karke ek line me fit karega
  child: Text(
text ?? "create".tr,
    style: TextStyle(
      fontFamily: "gotham",
      fontSize:fontsize2?? 42.sp,
      color: textColor ?? AppColors.createBorderColor,
    ),
  ),
)

          ),
        ),
        ishow
            ? Positioned(
                top:top?? -40 .h,
                right: (right ?? -1) .w,
                child: SvgPicture.asset(
                  Appimages.arrowdown,
                  height: 69.h,
                  width: 83.w,
                ),
              )
            : SizedBox()
      ],
    );
  }
}
