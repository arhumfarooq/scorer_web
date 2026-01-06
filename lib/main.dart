

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:scorer_web/constants/app_routes.dart';
import 'package:scorer_web/localization/app_translation.dart';
import 'package:scorer_web/localization/translation_service.dart';
import 'package:scorer_web/view/splash_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedLocale = await TranslationService().getSavedLocale();
  runApp(MyApp(locale: savedLocale));
}

class MyApp extends StatelessWidget {
  final Locale locale;

  const MyApp({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080), // 👈 yahan apni base design ka size do
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            translations: AppTranslations(),
          locale: locale,
          getPages: AppRoutes.getAppRoutes(),
          fallbackLocale:  Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
      // child:  AudioVisualizer(),
    );
  }
}
