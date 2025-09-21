
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorer_web/constants/appimages.dart';
import 'package:scorer_web/widgets/create_container.dart';

class CustomStackImage extends StatelessWidget {
  final String? image;
  final String ?text;
  const CustomStackImage({
    super.key,  this.image, this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225.h,
     decoration: BoxDecoration(
      image: DecorationImage(image:
      
      
       AssetImage(image?? Appimages.facil2,),
    
      )
     ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          
        
                                       Positioned(
                                        bottom: -17.h,
    
    left: 30.w,    
    // right: 24.w,                                    // top: 220,
    
                                         child: CreateContainer(
                                          borderW: 1.7.w,
                                          top: -25.h,
                                         width: 156.w,
                                         height: 57.h,
                                         text:text?? "Facilitator",fontsize2: 17.sp,right: -22,
                                         arrowh: 35.h,arrowW: 29.w,
                                         
                                         ),
                                       )
        ],
      ),
    );
  }
}