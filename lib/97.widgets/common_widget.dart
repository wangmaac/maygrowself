import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';

class CommonWidget {
  static Widget buildLoginFrame(BuildContext context,
      {required String titleString, required Widget contentColumn, required Widget bottomButton}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150.h),
          Text(titleString, style: AppTextStyle.h24.get.copyWith(color: Colors.white)),
          SizedBox(height: 50.h),
          SizedBox(
            width: 338.w,
            child: contentColumn,
          ),
          SizedBox(
            width: 338.w,
            child: bottomButton,
          )
        ],
      ),
    );
  }

  static void showToast(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primary66D0C5,
        textColor: Colors.black,
        fontSize: 14.0
    );
  }

  static Widget buildButton(
      {required String text, required Color textColor, required Function onPressed, required Color backgroundColor, bool isFullWidth = false}) {
    return Container(
      height: 70.h,
      width: isFullWidth ? double.infinity : 338.w,
      decoration: BoxDecoration(color: backgroundColor),
      child: Center(
        child: Text(
          text,
          style: AppTextStyle.h16.get.copyWith(color: textColor),
        ),
      ),
    );
  }

  // for just UI
  static Widget buildTextFormFiled({required TextEditingController controller, required String hintText}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  static Widget buildPasswordTextFormFiled({required TextEditingController controller, required String hintText, required Function(String) onChangedValidator}) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      autovalidateMode: AutovalidateMode.disabled,
      onChanged: onChangedValidator,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  static Widget buildPasswordConfirmTextFormFiled({required TextEditingController controller, required String hintText, required Function(String) onChangedValidator}) {
    return TextFormField(
      controller: controller,
      obscureText: true,
      autovalidateMode: AutovalidateMode.disabled,
      onChanged: onChangedValidator,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  static Widget buildTextFormFiledWithValidation({required TextEditingController controller, required String hintText, required String valTitle, required Function() validator, required Function(String) onChangedValidator}) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.disabled,
      onChanged: onChangedValidator,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: SizedBox(
          width: 80.w,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: GestureDetector(
              onTap: ()=> validator(),
              child: Container(
                width: 72.w,
                height: 10.h,
                alignment: Alignment.center,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(color: AppColors.button333333, borderRadius: BorderRadius.circular(26.0)),
                child: Text(valTitle, style: AppTextStyle.b14.get),
              ),
            ),
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  static Widget buildErrorStringWidget({String? errorString}) {
    return Wrap(
      children: [
        SizedBox(
          width: double.infinity,
          height: 45.h,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5.0),
            child: Text(
              errorString ?? '',
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}
