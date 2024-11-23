//import 'package:doctor_hunt/core/helpers/route_export.dart';

import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Color? enabledBorderSideColor;
  final Color? focusdBorderColor;
  final double? radius;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? cursorColor;
  final bool isPasswordField;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.inputStyle,
    this.hintStyle,
    this.isObscureText,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.controller,
    this.radius,
    this.enabledBorderSideColor,
    this.labelText,
    this.labelStyle,
    this.focusdBorderColor,
    this.cursorColor,
    this.validator,
    this.isPasswordField = false,
  });

  @override
  AppTextFormFieldState createState() => AppTextFormFieldState();
}

class AppTextFormFieldState extends State<AppTextFormField> {
  bool _isObscureText = true; // State variable for password visibility

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: (value) => widget.validator!(value),
      obscureText: widget.isPasswordField
          ? _isObscureText
          : widget.isObscureText ?? false,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: widget.labelStyle,
        contentPadding: widget.contentPadding ??
            EdgeInsets.symmetric(horizontal: 23.0.w, vertical: 16.0.h),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: widget.focusdBorderColor ?? AppColors.primaryColor,
                width: 1.3.w,
              ),
            ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: widget.enabledBorderSideColor ?? Colors.grey,
            width: 1.w,
          ),
        ),
        hintStyle: widget.hintStyle ?? AppStyles.font16Light,
        hintText: widget.hintText,
        suffixIcon: widget.isPasswordField
            ? IconButton(
                icon: Icon(
                  _isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.greyColor,
                ),
                onPressed: () {
                  setState(() {
                    _isObscureText = !_isObscureText; // Toggle visibility
                  });
                },
              )
            : widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        fillColor: widget.fillColor ?? Colors.white,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.w,
          ),
        ),
      ),
      cursorColor: widget.cursorColor ?? AppColors.primaryColor,
      style: widget.inputStyle ?? AppStyles.font16Light,
    );
  }
}
