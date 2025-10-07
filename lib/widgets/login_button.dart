
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:scorer/constants/appcolors.dart';
// import 'package:scorer/widgets/bold_text.dart';
import 'package:scorer_web/constants/appcolors.dart';
import 'package:scorer_web/widgets/bold_text.dart';
class LoginButton extends StatefulWidget {
  // ... (keep all your existing parameters)
  final String text;
  final Color? color;
  final bool ishow;
  final String? image;
  final IconData? icon;
  final double? height;
  final double? width;
  final String? fontFamily;
  final double? imageHeight;
  final double? imageWidth;
  final double? radius;
  final double? fontSize;
  final VoidCallback?onTap;
  const LoginButton({
    // ... (keep your existing constructor)
        super.key,
    required this.text,
    this.color,
    this.ishow = false,
    this.image,
    this.icon,
    this.height,
    this.width,
    this.radius,
    this.fontFamily,
    this.imageHeight,
    this.imageWidth,
    this.fontSize, this.onTap,
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final Color buttonColor = widget.color ?? AppColors.selectLangugaeColor;
    final Color hoverColor = _darkenColor(buttonColor, 0.15);
    final bool isEnabled = true ?? true;

    Widget? leading;

    if (widget.ishow) {
      if (widget.icon != null) {
        leading = Icon(
          widget.icon,
          size: (widget.imageHeight ?? 24).h,
          color: AppColors.whiteColor,
        );
      } else if (widget.image != null) {
        if (widget.image!.endsWith(".svg")) {
          leading = SvgPicture.asset(
            widget.image!,
            height: (widget.imageHeight ?? 24).h,
            width: (widget.imageWidth ?? 24).w,
            colorFilter: ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
          );
        } else {
          leading = Image.asset(
            widget.image!,
            height: (widget.imageHeight ?? 24).h,
            width: (widget.imageWidth ?? 24).w,
          );
        }
      }
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: isEnabled ? SystemMouseCursors.click : SystemMouseCursors.forbidden,
      child: InkWell(
        onTap: isEnabled ? widget.onTap : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: (widget.height ?? 74).h,
          width: widget.width != null ? widget.width!.w : double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((widget.radius ?? 27).r),
            color: isEnabled
                ? (_isHovering ? hoverColor : buttonColor)
                : buttonColor.withOpacity(0.5),
            boxShadow: _isHovering && isEnabled
                ? [
                    BoxShadow(
                      color: buttonColor.withOpacity(0.4),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    )
                  ]
                : [
                    BoxShadow(
                      color: buttonColor.withOpacity(0.2),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    )
                  ],
            border: _isHovering && isEnabled
                ? Border.all(
                    color: _lightenColor(buttonColor, 0.2),
                    width: 1.w,
                  )
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null) ...[
                AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: _isHovering ? 1.1 : 1.0,
                  child: leading,
                ),
                SizedBox(width: 10.w),
              ],
              AnimatedScale(
                duration: const Duration(milliseconds: 200),
                scale: _isHovering ? 1.05 : 1.0,
                child: BoldText(
                  fontFamily: widget.fontFamily,
                  text: widget.text,
                  selectionColor: isEnabled
                      ? AppColors.whiteColor
                      : AppColors.whiteColor.withOpacity(0.7),
                  fontSize: (widget.fontSize ?? 22).sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _darkenColor(Color color, double factor) {
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - factor).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  Color _lightenColor(Color color, double factor) {
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + factor).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
}