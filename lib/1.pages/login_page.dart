import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:maygrowself/2.providers/app_status_provider.dart';
import 'package:maygrowself/2.providers/login/email_login_page.provider.dart';
import 'package:maygrowself/5.models/button_inner_model.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/97.widgets/common_button.dart';
import 'package:maygrowself/97.widgets/common_widget.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';
import 'package:maygrowself/99.routers/router_util.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  late final InnerButtonModel _innerButtonModel;

  @override
  void initState() {
    super.initState();
    tryLoginWithStoredToken();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _innerButtonModel = InnerButtonModel(
        title: '로그인',
        onPressed: () async {
          final request = SignUpRequest(email: _emailController.text, password: _passwordController.text);
          final user = ref.read(appStatusProvider.notifier).setAppStatus(signUpRequest: request);
          try {
            user.whenComplete(() {
              print('user.whenComplete${ref.read(appStatusProvider).value.toString()}');
              GoRouter.of(context).go(AppPath.main.toPath);
            });
          } catch (e) {
            if (e is DioException) {
              //서버 통신 에러
              if (e.response!.data is ResponseEntity) {
                final ResponseEntity responseEntity = e.response!.data as ResponseEntity;
                CommonWidget.showToast(responseEntity.message);
              }
            } else {
              CommonWidget.showToast('운영자에게 연락바랍니다.');
            }
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: CommonWidget.buildLoginFrame(context,
            titleString: '로그인', contentColumn: buildContentColumn(), bottomButton: buildBottomButton()),
      ),
    );
  }

  Column buildBottomButton() {
    return Column(
      children: [
        ref.watch(loginProvider.notifier).isALlPassed()
            ? CommonButtonWidget.success(model: _innerButtonModel)
            : CommonButtonWidget.normal(model: _innerButtonModel),
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
    final List<String?> errorList = ref.watch(loginProvider);
    return Column(
      children: [
        CommonWidget.buildDefaultTextFormFiled(
            controller: _emailController,
            hintText: '이메일',
            onChangedValidator: (text) => ref.watch(loginProvider.notifier).checkEmailRegExp(text)),
        CommonWidget.buildErrorStringWidget(errorString: errorList[0]),
        CommonWidget.buildPasswordTextFormFiled(
            controller: _passwordController,
            hintText: '비밀번호',
            onChangedValidator: (text) => ref.watch(loginProvider.notifier).checkPasswordRegExp(text)),
        CommonWidget.buildErrorStringWidget(errorString: errorList[1]),
        Row(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }

  Future<void> tryLoginWithStoredToken() async {
    await ref.read(appStatusProvider.notifier).setAppStatus();
    GoRouter.of(context).go(AppPath.main.toPath);
  }
}
