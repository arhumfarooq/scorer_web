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
import 'package:scorer_web/view/AudioWaveExample.dart';
import 'package:scorer_web/view/FacilitatorFolder/create_new_session_screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/end_session_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/evaluate_response_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/evauate_response_Screen2.dart';
import 'package:scorer_web/view/FacilitatorFolder/facilitator_dashboard.dart';
import 'package:scorer_web/view/FacilitatorFolder/over_view_option_screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/view_response_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/view_score_Screen.dart';
import 'package:scorer_web/view/adminFolder/admin_dashboard.dart';
import 'package:scorer_web/view/adminFolder/admin_detailed_Screen.dart';
import 'package:scorer_web/view/adminFolder/admin_over_view_option_screen.dart';
import 'package:scorer_web/view/adminFolder/create_new_Session_header.dart';
import 'package:scorer_web/view/adminFolder/game_Screen2_admin_side.dart';
import 'package:scorer_web/view/adminFolder/game_Screen_Adminside.dart';
import 'package:scorer_web/view/adminFolder/user_Player_detailed_screen.dart';
import 'package:scorer_web/view/adminFolder/user_facilitate_detailed_scree.dart';
import 'package:scorer_web/view/adminFolder/user_managemnet_screen.dart';
import 'package:scorer_web/view/admin_lgin.dart';
import 'package:scorer_web/view/choose_ypur_role_screen.dart';
import 'package:scorer_web/view/facil_login_screen.dart';
import 'package:scorer_web/view/player_folder/player_dashboard_Screen.dart';
import 'package:scorer_web/view/player_folder/player_dashboard_Screen2.dart';
import 'package:scorer_web/view/player_folder/player_login_side.dart';
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
      child:  PlayerDashboardScreen2(),
    );
  }
}
