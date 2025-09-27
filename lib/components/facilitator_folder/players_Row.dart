import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/bold_text.dart';
import 'package:scorer_web/widgets/main_text.dart';

class PlayersRow extends StatelessWidget {
    final bool isTeamSelected; 
   const PlayersRow({super.key, required this.isTeamSelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 161.w,
                      height: 161.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win2:
                      Appimages.play2,),fit: BoxFit.cover,),
                    border: Border.all(color: AppColors.newggrey,width: 9.w)
                      ),
                      
                    ),
                     Positioned(
  

  bottom: -18.h,
  left: 50.w,
  child: Container(
  height: 60.h,
  width: 60.w,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.newggrey,
    border: Border.all(color: AppColors.newborder, width: 9.w), 
  ),
  child: Center(
    child: MainText(
      text: "2",
      fontSize: 14, 
    ),
  ),
)


),
                  ],
                ),
                SizedBox(height: 20,),

                 BoldText(text:isTeamSelected?"Team Rock": "Sarah J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

              ],
            ),
            

            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
     
                    Container(
                      height: 252.h,
                      width: 252.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellowColor,width: 9.w),
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win1:
                      Appimages.bg,),fit: BoxFit.cover,)
                    
                      ),
                    ),
                    
    Positioned(
  
 bottom: -18.h,
  left: 95.w,
  child: Container(
  height: 60.h,
  width: 60.w,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.yellowColor,
    border: Border.all(color: AppColors.newborder, width: 9.w), 
  ),
  child: Center(
    child: MainText(
      text: "1",
      fontSize: 14, 
    ),
  ),
)


),
 Positioned(
  top:-110.h,
  left: 55.w,
  child: SvgPicture.asset(Appimages.Crown,width: 186.w,height: 158.h,)),
                   


                  ],
                ),
                SizedBox(height: 20,),
                 BoldText(text:isTeamSelected?"Team Rock": "Alex J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

                
              ],
            ),
            
             Column(
               children: [
                 Stack(
                  clipBehavior: Clip.none,
                   children: [
                     Container(
             width: 161.w,
                      height: 161.h,
                      decoration: BoxDecoration(
                        border: Border.all(color:AppColors.orangeColor,width: 9.w ),
                        shape: BoxShape.circle,
                     image: DecorationImage(image: AssetImage(
                      isTeamSelected?Appimages.win3:
                      Appimages.profile,),fit: BoxFit.cover,
                      
                      )
                      ),
                      
                                 ),
                                 
  Positioned(
  
 bottom: -18.h,
  left: 50.w,
  child: Container(
  height: 60.h,
  width: 60.w,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColors.orangeColor,
    border: Border.all(color: AppColors.newborder, width: 9.w), 
  ),
  child: Center(
    child: MainText(
      text: "3",
      fontSize: 14, 
    ),
  ),
)


),
                   ],
                 ),
                SizedBox(height: 20,),

                              BoldText(text:isTeamSelected?"Team Rock": "Sarah J.",selectionColor: AppColors.blueColor,fontSize: 16,),
    BoldText(text: "2,450 pts",selectionColor: AppColors.forwardColor,fontSize: 18,)

               ],
             ),
          ],
        ),
       
































      ],
    );
  }
}