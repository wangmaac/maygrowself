import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:maygrowself/97.widgets/common_widget.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';
import 'package:maygrowself/99.routers/router_util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  String? _emailErrorString;
  String? _passwordErrorString;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: CommonWidget.buildLoginFrame(
          context,
          titleString: '로그인',
          contentColumn: buildContentColumn(),
          bottomButton: buildBottomButton(),
        ),
      ),
    );
  }


  Column buildBottomButton() {
    return Column(
      children: [
        CommonWidget.buildButton(
            text: '로그인', textColor: AppColors.text828282, onPressed: () {}, backgroundColor: AppColors.button333333),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () => context.push(AppPath.signup.toPath),
                child: Text(
                  '회원가입',
                  style: AppTextStyle.b14.get.copyWith(color: AppColors.textE5E5E5),
                )),
            TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () => context.push(AppPath.passwordReset.toPath),
                child: Text(
                  '비밀번호 재설정',
                  style: AppTextStyle.b14.get.copyWith(color: AppColors.textE5E5E5),
                )),
          ],
        ),
      ],
    );
  }

  Column buildContentColumn() {
    return Column(
      children: [
        CommonWidget.buildTextFormFiled(controller: _emailController, hintText: '이메일'),
        //errorString control by object(위/아래 widget)
        CommonWidget.buildErrorStringWidget(errorString: _emailErrorString),
        CommonWidget.buildTextFormFiled(controller: _passwordController, hintText: '비밀번호'),
        //errorString control by object(위/아래 widget)
        CommonWidget.buildErrorStringWidget(errorString: _passwordErrorString),
        Row(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
