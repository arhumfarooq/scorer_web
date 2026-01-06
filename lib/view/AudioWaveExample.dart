

import 'dart:math';
import 'package:flutter/material.dart';

class AudioVisualizer extends StatefulWidget {
  @override
  _AudioVisualizerState createState() => _AudioVisualizerState();
}

class _AudioVisualizerState extends State<AudioVisualizer> {
  final Random _random = Random();
  bool isPlaying = false;

  // Fixed grey bars heights (jaise tumhari image me dikh raha tha)
  List<int> baseBars = [
    35, 40, 55, 35, 60, 45, 30, 20, 50, 70,
    40, 25, 30, 45, 65, 55, 35, 25, 40, 50,
    30, 20, 40, 55, 35, 25, 45, 50, 60, 40,
    30, 20, 
  ];

  List<int> greenBars = [];

  @override
  void initState() {
    super.initState();
    greenBars = List.generate(baseBars.length, (i) => 5); // start me small
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
        greenBars = List.generate(
          baseBars.length,
          (index) => _random.nextInt(baseBars[index] + 1), // green max grey tak
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Waveform
        Container(
            height: 52,
            width: 300,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: baseBars.asMap().entries.map((entry) {
              int index = entry.key;
              int baseHeight = entry.value;
              int greenHeight = greenBars[index];

              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // Grey background bar
                  Container(
                    
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 4,
                    height: baseHeight.toDouble(),
                    color: Colors.grey.shade400,
                  ),
                  // Green animated bar (sirf bottom se fill hoga)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    width: 4,
                    height: greenHeight.toDouble(),
                    color: Colors.green,
                  ),
                ],
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
