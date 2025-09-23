// import 'package:flutter/material.dart';
// import 'package:scorer_web/view/gradient_background.dart';
// import 'package:scorer_web/view/splash_Screen.dart';
// import 'package:scorer_web/view/start_Screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: StartScreen()
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/view/FacilitatorFolder/facilitator_dashboard.dart';
import 'package:scorer_web/view/FacilitatorFolder/over_view_option_screen.dart';
import 'package:scorer_web/view/admin_lgin.dart';
import 'package:scorer_web/view/choose_ypur_role_screen.dart';
import 'package:scorer_web/view/facil_login_screen.dart';
import 'package:scorer_web/view/player_login_screen.dart';
import 'package:scorer_web/view/start_Screen.dart';
import 'package:scorer_web/view/start_Screen1.dart';
import 'package:scorer_web/view/start_Screen3.dart';
import 'package:scorer_web/view/start_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080), // 👈 yahan apni base design ka size do
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:  StartScreen(),
    );
  }
}
