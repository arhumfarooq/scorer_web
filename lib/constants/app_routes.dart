
import 'package:get/get.dart';
import 'package:scorer_web/components/admin_folder.dart/admin_over_view_Screen.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/view/FacilitatorFolder/create_new_session_screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/end_session_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/evaluate_response_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/evauate_response_Screen2.dart';
import 'package:scorer_web/view/FacilitatorFolder/facilitator_dashboard.dart';
import 'package:scorer_web/view/FacilitatorFolder/over_view_option_screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/view_response_Screen.dart';
import 'package:scorer_web/view/FacilitatorFolder/view_score_Screen.dart';
import 'package:scorer_web/view/adminFolder/admin_create_new_Session_Screen.dart';
import 'package:scorer_web/view/adminFolder/admin_dashboard.dart';
import 'package:scorer_web/view/adminFolder/admin_detailed_Screen.dart';
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
import 'package:scorer_web/view/player_folder/player_game_start_Screen.dart';
import 'package:scorer_web/view/player_folder/player_leaderboard_Screen.dart';
import 'package:scorer_web/view/player_folder/player_leaderboard_Screen2.dart';
import 'package:scorer_web/view/player_folder/player_login_side.dart';
import 'package:scorer_web/view/player_folder/response_submit_screen1.dart';
import 'package:scorer_web/view/player_folder/response_submitted_Screen2.dart';
import 'package:scorer_web/view/player_login_screen.dart';
import 'package:scorer_web/view/splash_Screen.dart';
import 'package:scorer_web/view/start_Screen.dart';
import 'package:scorer_web/view/start_Screen1.dart';
import 'package:scorer_web/view/start_Screen3.dart';
import 'package:scorer_web/view/start_screen2.dart';

class AppRoutes {

static getAppRoutes()=>[

GetPage(name:RouteName.splashScreen, page:()=> SplashScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.startScreen, page:()=> StartScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.startScreen1, page:()=> StartScreen1(),
transition: Transition.cupertino
),
GetPage(name:RouteName.adminLoginScreen, page:()=> AdminLgin(),
transition: Transition.cupertino
),
GetPage(name:RouteName.chooseYourRoleScreen, page:()=> ChooseYpurRoleScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.createNewSessionScreen, page:()=> CreateNewSessionScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.endSessionScreen, page:()=> EndSessionScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.evaluateResponseScreen, page:()=> EvaluateResponseScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.evaluateResponseScreen2, page:()=> EvauateResponseScreen2(),
transition: Transition.cupertino
),GetPage(name:RouteName.facilLoginScreen, page:()=> FacilLoginScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.facilitatorDashboard, page:()=> FacilitatorDashboard(),
transition: Transition.cupertino
),GetPage(name:RouteName.overViewOptionScreen, page:()=> OverViewOptionScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.playerLoginScreen, page:()=> PlayerLoginScreen(),
transition: Transition.cupertino
),GetPage(name:RouteName.startScreen2, page:()=> StartScreen2(),
transition: Transition.cupertino
),GetPage(name:RouteName.startScreen3, page:()=> StartScreen3(),
transition: Transition.cupertino
),GetPage(name:RouteName.viewResponsesScreen, page:()=> ViewResponseScreen(),
transition: Transition.cupertino
),
GetPage(name:RouteName.viewScoreScreen, page:()=> ViewScoreScreen(),
transition: Transition.cupertino
),
GetPage(
  name: RouteName.adminCreateNewSessionScreen,
  page: () => AdminCreateNewSessionScreen(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.adminDashboard,
  page: () => AdminDashboard(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.adminOverviewOptionScreens,
  page: () => AdminOverViewScreen(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.createNewSessionHeader,
  page: () => CreateNewSessionHeader(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.gameScreenAdminSide,
  page: () => GameScreenAdminside(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.game2Screen,
  page: () => GameScreen2AdminSide(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.userAdminDetailedScree,
  page: () => AdminDetailedScreen(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.userFacilitateDetailedScree,
  page: () => UserFacilitateDetailedScree(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.userManagementScreen,
  page: () => UserManagemnetScreen(),
  transition: Transition.cupertino,
),
GetPage(
  name: RouteName.userPlayerDetailedScree,
  page: () => UserPlayerDetailedScreen(),
  transition: Transition.cupertino,
),
GetPage(
      name: RouteName.gameStart1Screen,
      page: () => PlayerGameStartScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.playerDashboardScreen2,
      page: () => PlayerDashboardScreen2(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.playerDashboard,
      page: () => PlayerDashboardScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.playerLeaderBoardScreen2,
      page: () => PlayerLeaderboardScreen2(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.playerLeaderboardScreen,
      page: () => PlayerLeaderboardScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.playerLoginPlaySide,
      page: () => PlayerLoginSide(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.submitResponseScreen,
      page: () => ResponseSubmitScreen1(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: RouteName.submitResponseScreen2,
      page: () => ResponseSubmittedScreen2(),
      transition: Transition.cupertino,
    ),
    

];

}