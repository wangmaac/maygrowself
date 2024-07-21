import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maygrowself/97.widgets/common_widget.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordValidationController;

  String? _emailErrorString;
  String? _passwordErrorString;
  String? _passwordValidationErrorString;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordValidationController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CommonWidget.buildButton(
              text: '가입하기',
              textColor: AppColors.text828282,
              onPressed: () {},
              backgroundColor: AppColors.textE5E5E5,
              isFullWidth: true),
          SizedBox(
            height: MediaQuery.of(context).viewPadding.bottom.h,
          ),
        ],
      ),
      body: CommonWidget.buildLoginFrame(context,
          titleString: '회원가입', contentColumn: buildContentColumn(), bottomButton: Column()),
    );
  }

  Column buildContentColumn() {
    return Column(
      children: [
        CommonWidget.buildTextFormFiledWithValidation(controller: _emailController, hintText: '이메일'),
        //errorString control by object(위/아래 widget)
        CommonWidget.buildErrorStringWidget(errorString: _emailErrorString),
        CommonWidget.buildTextFormFiled(controller: _passwordController, hintText: '비밀번호'),
        //errorString control by object(위/아래 widget)
        CommonWidget.buildErrorStringWidget(errorString: _passwordErrorString),
        CommonWidget.buildTextFormFiled(controller: _passwordValidationController, hintText: '비밀번호 확인'),
        //errorString control by object(위/아래 widget)
        CommonWidget.buildErrorStringWidget(errorString: _passwordValidationErrorString),
        Row(),
        SizedBox(
          height: 50.h,
        ),
        Row(
          children: [
            RoundCheckBox(
              onTap: (value) {
                print('value: $value');
              },
              animationDuration: Duration(milliseconds: 160),
              checkedColor: AppColors.primary66D0C5,
              size: 22.w,
              checkedWidget: Icon(
                Icons.check,
                color: Colors.white,
                size: 12.w,
                weight: 10,
              ),
              isRound: true,
              border: Border.all(color: AppColors.blue364FC7, width: 2.0.w),
              uncheckedColor: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              '이용약관 동의',
              style: AppTextStyle.h14.get.copyWith(color: AppColors.textE5E5E5),
            ),
            Icon(
              FontAwesomeIcons.chevronRight,
              size: 13.w,
            )
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: [
            RoundCheckBox(
              onTap: (value) {
                print('value: $value');
              },
              animationDuration: Duration(milliseconds: 160),
              checkedColor: AppColors.primary66D0C5,
              size: 22.w,
              checkedWidget: Icon(
                Icons.check,
                color: Colors.white,
                size: 12.w,
                weight: 10,
              ),
              isRound: true,
              border: Border.all(color: AppColors.blue364FC7, width: 2.0.w),
              uncheckedColor: Colors.white,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              '개인정보처리 이용안내 동의',
              style: AppTextStyle.h14.get.copyWith(color: AppColors.textE5E5E5),
            ),
            Icon(
              FontAwesomeIcons.chevronRight,
              size: 13.w,
            )
          ],
        ),
      ],
    );
  }
}
