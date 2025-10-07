
// import 'package:flutter/material.dart';
// import 'package:scorer_web/constants/appimages.dart';

// class GradientBackground extends StatelessWidget {
//   final Widget child;

//   const GradientBackground({super.key, required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // 🔹 Background Image with opacity
//         Opacity(
//           opacity: 0.1, // jitni chaho transparency set karo
//           child: Image.asset(
//             Appimages.mountain, // apni image ka path
//             fit: BoxFit.cover,
//             height: double.infinity,
//             width: double.infinity,
//           ),
//         ),

//         // 🔹 Foreground child
//         child,
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:scorer_web/constants/appimages.dart';
// import 'package:scorer_web/constants/appimages.dart'; // Keep this if needed

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 1. 🖼️ Background Image with opacity (as you had it)
        Opacity(
          opacity: 0.1, // Image transparency
          child: Image.asset(
            // Use your actual path: Appimages.mountain
            Appimages.mountain, // Example placeholder path
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),

        // --- 2. 🌈 GRADIENT COLOR OVERLAY (The new part) ---
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // ⚠️ Transparency is added using the first two hex digits (0x20)
                // 0x20 = approximately 12.5% opacity (very light wash)
                
                // Light Blue (from #1276BB)
                Color(0x201276BB), 
                
                // Light Lime Green (from #8DC046)
                Color(0x208DC046),
              ],
            ),
          ),
        ),
        // ----------------------------------------------------

        // 3. 👤 Foreground child
        child,
      ],
    );
  }
}