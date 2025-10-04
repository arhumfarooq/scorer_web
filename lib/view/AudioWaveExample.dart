// // // // // import 'package:flutter/material.dart';

// // // // // class StaticAudioResponse extends StatelessWidget {
// // // // //   const StaticAudioResponse({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       backgroundColor: Colors.white,
// // // // //       body: SafeArea(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
// // // // //           child: Column(
// // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //             children: [
// // // // //               // Back button and title
// // // // //               Row(
// // // // //                 children: [
// // // // //                   IconButton(
// // // // //                     icon: const Icon(Icons.arrow_back, color: Colors.black),
// // // // //                     onPressed: () => Navigator.pop(context),
// // // // //                   ),
// // // // //                   const SizedBox(width: 8),
// // // // //                   const Text(
// // // // //                     'Audio Response',
// // // // //                     style: TextStyle(
// // // // //                       fontSize: 24,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       color: Colors.black,
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
              
// // // // //               const SizedBox(height: 8),
              
// // // // //               // 2 min read
// // // // //               const Padding(
// // // // //                 padding: EdgeInsets.only(left: 56.0),
// // // // //                 child: Text(
// // // // //                   '2 min read',
// // // // //                   style: TextStyle(
// // // // //                     fontSize: 16,
// // // // //                     color: Colors.grey,
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
              
// // // // //               const SizedBox(height: 40),
              
// // // // //               // Time indicators
// // // // //               Padding(
// // // // //                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
// // // // //                 child: Row(
// // // // //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                   children: const [
// // // // //                     Text(
// // // // //                       '1:45',
// // // // //                       style: TextStyle(
// // // // //                         fontSize: 14,
// // // // //                         color: Colors.black,
// // // // //                         fontWeight: FontWeight.w500,
// // // // //                       ),
// // // // //                     ),
// // // // //                     Text(
// // // // //                       '4:45',
// // // // //                       style: TextStyle(
// // // // //                         fontSize: 14,
// // // // //                         color: Colors.black,
// // // // //                         fontWeight: FontWeight.w500,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
              
// // // // //               const SizedBox(height: 12),
              
// // // // //               // Static Waveform
// // // // //               Container(
// // // // //                 height: 60,
// // // // //                 child: Row(
// // // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // // //                   children: List.generate(40, (index) {
// // // // //                     final height = 10 + (index % 10) * 8.0;
// // // // //                     return Container(
// // // // //                       width: 3,
// // // // //                       height: height,
// // // // //                       margin: const EdgeInsets.symmetric(horizontal: 2),
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: index < 1 ? Colors.blue : Colors.grey[400],
// // // // //                         borderRadius: BorderRadius.circular(2),
// // // // //                       ),
// // // // //                     );
// // // // //                   }),
// // // // //                 ),
// // // // //               ),
              
// // // // //               const SizedBox(height: 40),
              
// // // // //               // Play button
// // // // //               Center(
// // // // //                 child: Container(
// // // // //                   width: 70,
// // // // //                   height: 70,
// // // // //                   decoration: BoxDecoration(
// // // // //                     color: Colors.blue,
// // // // //                     shape: BoxShape.circle,
// // // // //                     boxShadow: [
// // // // //                       BoxShadow(
// // // // //                         color: Colors.blue.withOpacity(0.3),
// // // // //                         blurRadius: 8,
// // // // //                         offset: const Offset(0, 4),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                   child: const Icon(
// // // // //                     Icons.play_arrow,
// // // // //                     color: Colors.white,
// // // // //                     size: 32,
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'dart:math';
// // // // import 'package:flutter/material.dart';

// // // // class AudioVisualizer extends StatefulWidget {
// // // //   @override
// // // //   _AudioVisualizerState createState() => _AudioVisualizerState();
// // // // }

// // // // class _AudioVisualizerState extends State<AudioVisualizer> {
// // // //   final Random _random = Random();
// // // //   List<int> bars = List.generate(20, (index) => 10);

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _startAnimation();
// // // //   }

// // // //   void _startAnimation() {
// // // //     Future.doWhile(() async {
// // // //       await Future.delayed(Duration(milliseconds: 150));
// // // //       setState(() {
// // // //         bars = List.generate(20, (index) => _random.nextInt(100) + 10);
// // // //       });
// // // //       return true;
// // // //     });
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Row(
// // // //       mainAxisAlignment: MainAxisAlignment.center,
// // // //       crossAxisAlignment: CrossAxisAlignment.end,
// // // //       children: bars.map((height) {
// // // //         return AnimatedContainer(
// // // //           duration: Duration(milliseconds: 150),
// // // //           margin: EdgeInsets.symmetric(horizontal: 2),
// // // //           width: 6,
// // // //           height: height.toDouble(),
// // // //           color: Colors.greenAccent,
// // // //         );
// // // //       }).toList(),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class AudioWaveform extends StatefulWidget {
// // //   @override
// // //   _AudioWaveformState createState() => _AudioWaveformState();
// // // }

// // // class _AudioWaveformState extends State<AudioWaveform> {
// // //   double progress = 0.0; // 0.0 → 1.0
// // //   bool isPlaying = false;

// // //   List<int> bars = [
// // //     20, 35, 50, 40, 60, 45, 25, 30, 55, 70,
// // //     40, 20, 25, 45, 65, 55, 35, 25, 40, 50,
// // //     30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
// // //     30, 20, 35, 45, 55, 40, 25
// // //   ];

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //   }

// // //   void _togglePlayPause() {
// // //     setState(() {
// // //       isPlaying = !isPlaying;
// // //     });
// // //     if (isPlaying) {
// // //       _startProgress();
// // //     }
// // //   }

// // //   void _startProgress() async {
// // //     while (isPlaying && progress < 1.0) {
// // //       await Future.delayed(Duration(milliseconds: 100));
// // //       if (!isPlaying) break;
// // //       setState(() {
// // //         progress += 0.01;
// // //         if (progress >= 1.0) {
// // //           isPlaying = false; // Stop at end
// // //         }
// // //       });
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     int coloredBars = (bars.length * progress).floor();

// // //     return Column(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         // Waveform
// // //         Container(
// // //           padding: EdgeInsets.all(12),
// // //           decoration: BoxDecoration(
// // //             color: Colors.green.withOpacity(0.1),
// // //             borderRadius: BorderRadius.circular(12),
// // //           ),
// // //           child: Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             crossAxisAlignment: CrossAxisAlignment.end,
// // //             children: bars.asMap().entries.map((entry) {
// // //               int index = entry.key;
// // //               int height = entry.value;
// // //               return Container(
// // //                 margin: EdgeInsets.symmetric(horizontal: 2),
// // //                 width: 4,
// // //                 height: height.toDouble(),
// // //                 color: index < coloredBars ? Colors.green : Colors.grey.shade400,
// // //               );
// // //             }).toList(),
// // //           ),
// // //         ),
// // //         const SizedBox(height: 20),

// // //         // Play / Pause Button
// // //         IconButton(
// // //           iconSize: 50,
// // //           icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
// // //           color: Colors.green,
// // //           onPressed: _togglePlayPause,
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // import 'dart:math';
// // import 'package:flutter/material.dart';

// // class AudioEqualizer extends StatefulWidget {
// //   @override
// //   _AudioEqualizerState createState() => _AudioEqualizerState();
// // }

// // class _AudioEqualizerState extends State<AudioEqualizer> {
// //   final Random _random = Random();
// //   bool isPlaying = false;

// //   List<int> bars = List.generate(25, (index) => 20); // grey base lines
// //   List<int> animatedBars = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     animatedBars = List.from(bars);
// //   }

// //   void _togglePlayPause() {
// //     setState(() {
// //       isPlaying = !isPlaying;
// //     });
// //     if (isPlaying) {
// //       _startAnimation();
// //     }
// //   }

// //   void _startAnimation() async {
// //     while (isPlaying) {
// //       await Future.delayed(Duration(milliseconds: 150));
// //       setState(() {
// //         // sirf kuch random bars hi green move hongi
// //         animatedBars = List.generate(
// //           bars.length,
// //           (index) => _random.nextBool()
// //               ? _random.nextInt(80) + 20 // green bars move
// //               : bars[index], // grey static bars
// //         );
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         // Equalizer Bars
// //         Container(
// //           padding: EdgeInsets.all(12),
// //           decoration: BoxDecoration(
// //             color: Colors.green.withOpacity(0.1),
// //             borderRadius: BorderRadius.circular(12),
// //           ),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.end,
// //             children: animatedBars.asMap().entries.map((entry) {
// //               int index = entry.key;
// //               int height = entry.value;

// //               // play hote waqt kuch bars green, warna grey
// //               bool isActive = height != bars[index];

// //               return AnimatedContainer(
// //                 duration: Duration(milliseconds: 150),
// //                 margin: EdgeInsets.symmetric(horizontal: 2),
// //                 width: 5,
// //                 height: height.toDouble(),
// //                 color: isActive ? Colors.green : Colors.grey.shade400,
// //               );
// //             }).toList(),
// //           ),
// //         ),

// //         const SizedBox(height: 20),

// //         // Play / Pause Button
// //         IconButton(
// //           iconSize: 50,
// //           icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
// //           color: Colors.green,
// //           onPressed: _togglePlayPause,
// //         ),
// //       ],
// //     );
// //   }
// // }

import 'dart:math';
import 'package:flutter/material.dart';

class AudioEqualizer extends StatefulWidget {
  @override
  _AudioEqualizerState createState() => _AudioEqualizerState();
}

class _AudioEqualizerState extends State<AudioEqualizer> {
  final Random _random = Random();
  bool isPlaying = false;

  // Static waveform heights (jaise tumhari pic me thi)
  List<int> baseBars = [
    25, 40, 55, 35, 60, 45, 30, 20, 50, 70,
    40, 25, 30, 45, 65, 55, 35, 25, 40, 50,
    30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
    30, 20, 35, 45, 55, 40, 25
  ];

  List<int> animatedBars = [];

  @override
  void initState() {
    super.initState();
    animatedBars = List.from(baseBars); // shuru me static hi rahengi
  }

  void _togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
    if (isPlaying) {
      _startAnimation();
    }
  }

  void _startAnimation() async {
    while (isPlaying) {
      await Future.delayed(const Duration(milliseconds: 150));
      setState(() {
        animatedBars = List.generate(
          baseBars.length,
          (index) {
            if (_random.nextBool()) {
              // thodi si upar-neeche variation
              int variation = _random.nextInt(20) - 10; 
              return (baseBars[index] + variation).clamp(10, 80);
            }
            return baseBars[index];
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Equalizer Bars
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: animatedBars.asMap().entries.map((entry) {
              int index = entry.key;
              int height = entry.value;

              // agar move ho rahi to green, warna grey
              bool isActive = height != baseBars[index];

              return AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                margin: const EdgeInsets.symmetric(horizontal: 2),
                width: 4,
                height: height.toDouble(),
                color: isActive ? Colors.green : Colors.grey.shade400,
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 20),

        // Play / Pause Button
        IconButton(
          iconSize: 50,
          icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
          color: Colors.green,
          onPressed: _togglePlayPause,
        ),
      ],
    );
  }
}

// import 'dart:math';
// import 'package:flutter/material.dart';

// class AudioVisualizer extends StatefulWidget {
//   @override
//   _AudioVisualizerState createState() => _AudioVisualizerState();
// }

// class _AudioVisualizerState extends State<AudioVisualizer> {
//   final Random _random = Random();
//   bool isPlaying = false;

//   // Fixed grey bars heights (jaise tumhari image me dikh raha tha)
//   List<int> baseBars = [
//     25, 40, 55, 35, 60, 45, 30, 20, 50, 70,
//     40, 25, 30, 45, 65, 55, 35, 25, 40, 50,
//     30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
//     30, 20, 35, 45, 55, 40, 25
//   ];

//   List<int> greenBars = [];

//   @override
//   void initState() {
//     super.initState();
//     greenBars = List.generate(baseBars.length, (i) => 5); // start me small
//   }

//   void _togglePlayPause() {
//     setState(() {
//       isPlaying = !isPlaying;
//     });
//     if (isPlaying) {
//       _startAnimation();
//     }
//   }

//   void _startAnimation() async {
//     while (isPlaying) {
//       await Future.delayed(const Duration(milliseconds: 150));
//       setState(() {
//         greenBars = List.generate(
//           baseBars.length,
//           (index) => _random.nextInt(baseBars[index] + 1), // green max grey tak
//         );
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // Waveform
//         Container(
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             color: Colors.green.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: baseBars.asMap().entries.map((entry) {
//               int index = entry.key;
//               int baseHeight = entry.value;
//               int greenHeight = greenBars[index];

//               return Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   // Grey background bar
//                   Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 2),
//                     width: 4,
//                     height: baseHeight.toDouble(),
//                     color: Colors.grey.shade400,
//                   ),
//                   // Green animated bar (sirf bottom se fill hoga)
//                   AnimatedContainer(
//                     duration: const Duration(milliseconds: 150),
//                     margin: const EdgeInsets.symmetric(horizontal: 2),
//                     width: 4,
//                     height: greenHeight.toDouble(),
//                     color: Colors.green,
//                   ),
//                 ],
//               );
//             }).toList(),
//           ),
//         ),

//         const SizedBox(height: 20),

//         // Play / Pause Button
//         IconButton(
//           iconSize: 50,
//           icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
//           color: Colors.green,
//           onPressed: _togglePlayPause,
//         ),
//       ],
//     );
//   }
// }
