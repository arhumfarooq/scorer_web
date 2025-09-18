// // import 'package:flutter/material.dart';
// // import 'package:scorer/constants/appcolors.dart';

// // class BoldText extends StatelessWidget {
// //   // final bool? isSelcted;
// //   final String text;
// //   final double? fontSize;
// //   final Color? selectionColor;
// // final TextAlign? textAlign;
// // final String?fontFamily;
// // final double? height;
// //   const BoldText({super.key, required this.text,  this.selectionColor, this.textAlign, this.fontSize, this.height, this.fontFamily});

// //   @override
// //   Widget build(BuildContext context) {
// //     return 
// //         Text(text,style: TextStyle(fontFamily:fontFamily?? "giory",fontSize:fontSize?? 22,letterSpacing: -0.3,
// //         fontWeight: FontWeight.w400,color:selectionColor?? AppColors.languageTextColor,
// //         height: height
        
// //         ),
        
// //         textAlign: textAlign,)
    
// //     ;
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scorer/constants/appcolors.dart';

// class BoldText extends StatelessWidget {
//   final String text;
//   final double? fontSize;
//   final Color? selectionColor;
//   final TextAlign? textAlign;
//   final String? fontFamily;
//   final double? height;

//   const BoldText({
//     super.key,
//     required this.text,
//     this.selectionColor,
//     this.textAlign,
//     this.fontSize,
//     this.height,
//     this.fontFamily,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontFamily: fontFamily ?? "giory",
//         fontSize: (fontSize ?? 22).sp, // 👈 responsive font size
//         letterSpacing: -0.3,
//         fontWeight: FontWeight.w400,
//         color: selectionColor ?? AppColors.languageTextColor,
//         height: height?.h, // 👈 responsive line height
//       ),
//       textAlign: textAlign,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:scorer_web/constants/appcolors.dart';
// import 'package:scorer/constants/appcolors.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? selectionColor;
  final TextAlign? textAlign;
  final String? fontFamily;
  final double? height;

  const BoldText({
    super.key,
    required this.text,
    this.selectionColor,
    this.textAlign,
    this.fontSize,
    this.height,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen height
   
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily ?? "giory",
        fontSize: 22,
        letterSpacing: -0.3,
        fontWeight: FontWeight.w400,
        color: selectionColor ?? AppColors.languageTextColor,
        // height: responsiveHeight,
      ),
      textAlign: textAlign,
    );
  }
}
