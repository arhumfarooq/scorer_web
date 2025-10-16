
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/constants/route_name.dart';
import 'package:scorer_web/controller/language_selection_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/forward_button_container.dart';
import 'package:scorer_web/widgets/language_selection_container.dart';
import 'package:scorer_web/widgets/main_text.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(LanguageSelectionController());

  late AnimationController _animController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animController, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animController, curve: Curves.easeOut),
    );

    _scaleAnimation = Tween<double>(begin: 0.9, end: 1).animate(
      CurvedAnimation(parent: _animController, curve: Curves.elasticOut),
    );

    _animController.forward();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 220.w, right: 160.w),
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// 🟢 Left Logo with animation
                            SvgPicture.asset(
                              Appimages.splash,
                              height: 350.h,
                              width: 400.w,
                            ),

                            /// 🟢 Right Language Selection Card
                            Center(
                              child: Container(
                                height: 846.h,
                                width: 686.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 32.w,
                                    vertical: 32.h,
                                  ),
                                  child: Obx(() => Column(
                                        children: [
                                          SvgPicture.asset(
                                            Appimages.language,
                                            width: 37.33.w,
                                            height: 37.33.h,
                                          ),
                                          SizedBox(height: 10.h),
                                          MainText(
                                            text: 'select_language'.tr,
                                            fontSize: 25.sp,
                                          ),
                                          SizedBox(height: 20.h),

                                          /// 🏳️ Language Options
                                          LanguageSelectionContainer(
                                            text: "English",
                                            image: Appimages.uk,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                0,
                                            onTap: () => controller.select(0),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "Spanish",
                                            image: Appimages.spain,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                1,
                                            onTap: () => controller.select(1),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "French",
                                            image: Appimages.france,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                2,
                                            onTap: () => controller.select(2),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "Germany",
                                            image: Appimages.germany,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                3,
                                            onTap: () => controller.select(3),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "Italy",
                                            image: Appimages.italy,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                4,
                                            onTap: () => controller.select(4),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "Arabic",
                                            image: Appimages.saudi,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                5,
                                            onTap: () => controller.select(5),
                                          ),
                                          SizedBox(height: 9.h),
                                          LanguageSelectionContainer(
                                            text: "South Africa",
                                            image: Appimages.southAfrica,
                                            isSelected: controller
                                                    .selectLangauge.value ==
                                                6,
                                            onTap: () => controller.select(6),
                                          ),
                                          SizedBox(height: 24.h),

                                          /// 🚀 Forward Button
                                          ForwardButtonContainer(
                                            onTap: () {
                                              Get.toNamed(
                                                  RouteName.startScreen1);
                                            },
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
