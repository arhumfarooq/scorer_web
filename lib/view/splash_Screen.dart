














































import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart'; 
// import 'package:scorer/constants/appimages.dart';
// import 'package:scorer/view/FacilitateFolder/aa.dart';
// import 'package:scorer/view/FacilitateFolder/start_screen.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/view/start_Screen.dart'; 


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() =>  StartScreen()); 
      
      
      
      
      
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GradientBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50),

            
            Center(
              child: SvgPicture.asset(
                Appimages.splash,
                height: 350,
                width: 400,
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SvgPicture.asset(
                Appimages.bottom,
                width: 138,
                height: 42,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
