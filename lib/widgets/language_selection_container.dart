import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';

class LanguageSelectionContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image; // can be svg or png/jpg
  final bool isSelected;

  const LanguageSelectionContainer({
    super.key,
    required this.text,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      if (image.toLowerCase().endsWith(".svg")) {
        return SvgPicture.asset(
          image,
          width: 35 ,
          height: 35 ,
        );
      } else {
        return Image.asset(
          image,
          width: 35 ,
          height: 35 ,
          fit: BoxFit.contain,
        );
      }
    }


    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectLangugaeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(26 ),
          border: Border.all(
            color: isSelected
                ? AppColors.selectLangugaeColor.withOpacity(0.1)
                : AppColors.borderColor.withOpacity(0.25),
            width: 2 
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13 ),
          child: Row(
            children: [
              buildImage(),
              SizedBox(width: 17 ),
              BoldText(
                text: text,
                selectionColor: isSelected
                    ? AppColors.whiteColor
                    : AppColors.languageTextColor,
                fontSize: 20 
              )
            ],
          ),
        ),
      ),
    );
  }
}
