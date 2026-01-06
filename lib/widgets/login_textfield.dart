
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:scorer/constants/appcolors.dart';
import 'package:scorer_web/constants/appcolors.dart';



class _LoginTextfieldState extends State<LoginTextfield> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  bool isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 74.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.r),
        border: Border.all(
          color: AppColors.selectLangugaeColor.withOpacity(0.1),
          width: 3.w,
        ),
      ),
      child: TextFormField(
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),

          /// 👇 Focus ya typing par hint hide
          hintText: isFocused || _controller.text.isNotEmpty
              ? null
              : widget.text,

          hintStyle: TextStyle(
            fontFamily: "giory",
            fontSize: widget.fontsize ?? 22.sp,
            color: AppColors.languageTextColor,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
class LoginTextfield extends StatefulWidget {
  final double? fontsize;
  final String text;
  final double? height;
  final bool ishow;

  const LoginTextfield({
    super.key,
    required this.text,
    this.fontsize,
    this.height,
    this.ishow = false,
  });

  @override
  State<LoginTextfield> createState() => _LoginTextfieldState();
}