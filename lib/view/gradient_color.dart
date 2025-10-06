
// import 'package:flutter/material.dart';

// class GradientColor extends StatelessWidget {
//   final Widget child; 

//   const GradientColor({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.bottomCenter,
//           end: Alignment.topCenter,
//           colors: [
//             Color(0xFFFFFFFF), 
//             Color(0x00FFFFFF), 
//           ],
//         ),
//       ),
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.bottomRight,
//             end: Alignment.topLeft,
//             colors: [
//               Color.fromRGBO(67, 177, 80, 0.2), 
//               Color.fromRGBO(168, 209, 236, 0.2), 
//             ],
//             transform: GradientRotation(0.97), 
//           ),
//         ),
//         child: child, 
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientColor extends StatelessWidget {
  final bool ishow;
  final double?height;
  final Widget child; 

  const GradientColor({super.key, required this.child, this.height,  this.ishow=true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? double.infinity,
      decoration:  BoxDecoration(
        // borderRadius: BorderRadius.circular(40.r),
          borderRadius: BorderRadius.only(
                    topLeft:ishow? Radius.circular(40.r):Radius.circular(0),
                    topRight: ishow? Radius.circular(40.r):Radius.circular(0),
                  ),

        // Outer Gradient: यह एक ठोस सफेद से बहुत हल्के नीले-सफेद (cool white) बेस को बनाता है। 
        // आपके मूल 'white-to-transparent' fade को हटाकर स्क्रीन को एक हल्का, ठंडा रंग दिया गया है।
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFFFFFFFF),       // Bottom: Solid White
            Color(0xFFF7F9FF),       // Top: Very light, cool white (almost white)
          ],
        ),
      ),
      child: Container(
        // Inner Gradient: यह हल्का, तिरछा (diagonal) ग्रीन/ब्लू पैटर्न बनाता है।
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [
              // Opacity को काफी कम कर दिया गया है (0.2 से 0.05/0.1), जिससे glow बहुत सब्टल लगे।
              Color.fromRGBO(67, 177, 80, 0.05),   // Faint Green (Green: 67, 177, 80)
              Color.fromRGBO(168, 209, 236, 0.1),  // Faint Light Blue (Blue: 168, 209, 236)
            ],
            transform: GradientRotation(0.97), 
          ),
        ),
        child: child, 
      ),
    );
  }
}