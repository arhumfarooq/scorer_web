import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/controller/language_selection_controller.dart';
import 'package:scorer_web/view/gradient_background.dart';
import 'package:scorer_web/widgets/language_selection_container.dart';
import 'package:scorer_web/widgets/main_text.dart';

class StartScreen extends StatelessWidget {
  final controller = Get.put(LanguageSelectionController());

   StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GradientBackground(child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 220,right: 160),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
        
            Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                        Appimages.splash,
                        height: 350,
                        width: 400,
                      ),
              
                      Center(
                        child: Container(
                          height: 600,
                          width: 500,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            // border: Border.all()
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(Appimages.language),
                              MainText(text: "Select Language",fontSize: 25,),
              
              
                               Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 32),
                                 child: Column(
                                                           children: [
                                                             LanguageSelectionContainer(
                                  text: "English",
                                  image: Appimages.uk,
                                  isSelected: controller.selectLangauge.value == 0,
                                  onTap: () => controller.select(0),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "Spanish",
                                  image: Appimages.spain,
                                  isSelected: controller.selectLangauge.value == 1,
                                  onTap: () => controller.select(1),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "French",
                                  image: Appimages.france,
                                  isSelected: controller.selectLangauge.value == 2,
                                  onTap: () => controller.select(2),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "Germany",
                                  image: Appimages.germany,
                                  isSelected: controller.selectLangauge.value == 3,
                                  onTap: () => controller.select(3),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "Italy",
                                  image: Appimages.italy,
                                  isSelected: controller.selectLangauge.value == 4,
                                  onTap: () => controller.select(4),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "Arabic",
                                  image: Appimages.saudi,
                                  isSelected: controller.selectLangauge.value == 5,
                                  onTap: () => controller.select(5),
                                                             ),
                                                             SizedBox(height: 9 ),
                                                             LanguageSelectionContainer(
                                  text: "South Africa",
                                  image: Appimages.southAfrica,
                                  isSelected: controller.selectLangauge.value == 6,
                                  onTap: () => controller.select(6),
                                                             ),
                                                           ],
                                                         ),
                               ),
                            
                            ],
                          ),
                        ),
                      )
                ],
              ),
            ),
        
          ],
        ),
      ),
    ),),);
  }
}