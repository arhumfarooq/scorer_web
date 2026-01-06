import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scorer_web/constants/appcolors.dart';

class SessionNameField extends StatefulWidget {
  const SessionNameField({super.key});

  @override
  State<SessionNameField> createState() => _SessionNameFieldState();
}

class _SessionNameFieldState extends State<SessionNameField> {
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
      height: 137.h,
      child: TextFormField(
        controller: _controller,
        focusNode: _focusNode,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 42.sp,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: (isFocused || _controller.text.isNotEmpty) 
              ? null 
              : "enter_session_name".tr, // 👈 Focus ya typing par hide
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.languageTextColor,
          ),
          isDense: false,
          contentPadding: EdgeInsets.symmetric(
            vertical: 40.h,
            horizontal: 16.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              color: AppColors.assignColor,
              width: 2.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(
              color: AppColors.assignColor,
              width: 2.w,
            ),
          ),
        ),
      ),
    );
  }
}
