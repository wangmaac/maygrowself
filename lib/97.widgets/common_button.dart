import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maygrowself/5.models/button_inner_model.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';

class CommonButtonWidget<T> extends StatelessWidget {
  final String text;
  final Color textColor;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final bool isFullWidth;

  const CommonButtonWidget({
    super.key,
    required this.text,
    required this.textColor,
    this.onPressed = null,
    required this.backgroundColor,
    this.isFullWidth = false,
  });

  factory CommonButtonWidget.success({
    required T model,
  }) {
    return CommonButtonWidget(
      text: model is InnerButtonModel ? model.title : 'button',
      textColor: AppColors.button333333,
      onPressed: model is InnerButtonModel ? model.onPressed : null,
      backgroundColor: AppColors.primary66D0C5,
      isFullWidth: true,
    );
  }

  factory CommonButtonWidget.normal({
    required T model,
  }) {
    return CommonButtonWidget(
      text: model is InnerButtonModel ? model.title : 'button',
      textColor: AppColors.text828282,
      onPressed: null,
      backgroundColor: AppColors.textE5E5E5,
      isFullWidth: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 65.h,
        width: isFullWidth ? double.infinity : 338.w,
        decoration: BoxDecoration(color: backgroundColor),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.h16.get.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
