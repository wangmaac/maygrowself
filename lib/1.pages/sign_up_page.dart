import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maygrowself/2.providers/sign_up/email_signup_provider.future.dart';
import 'package:maygrowself/2.providers/sign_up/email_valid_provider.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/5.models/sign_up_request.dart';
import 'package:maygrowself/97.widgets/common_button.dart';
import 'package:maygrowself/97.widgets/common_widget.dart';
import 'package:maygrowself/98.resources/app_colors.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordValidationController;

  late final InnerButtonModel _innerButtonModel;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordValidationController = TextEditingController();
    _innerButtonModel = InnerButtonModel(
        title: '가입하기',
        onPressed: () async {
          final request = SignUpRequest(email: _emailController.text, password: _passwordController.text);
          try {
            bool success = await ref.read(signUpProvider(request).future);
            if(success) {
              GoRouter.of(context).pop();
            }
          } catch (e) {
            if (e is DioException) {
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
    final List<String?> errorStringList = ref.watch(signUpValidationProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ref.watch(signUpValidationProvider.notifier).isAllPassed()
              ? CommonButtonWidget.success(model: _innerButtonModel)
              : CommonButtonWidget.normal(model: _innerButtonModel),
          SizedBox(
            height: MediaQuery.of(context).viewPadding.bottom.h,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: CommonWidget.buildLoginFrame(context,
            titleString: '회원가입',
            contentColumn: buildContentColumn(errorStringList),
            bottomButton: SizedBox(
              height: 100.h,
            )),
      ),
    );
  }

  Column buildContentColumn(List<String?> errorStringList) {
    return Column(
      children: [
        buildEmailFormField(errorStringList[0]),
        CommonWidget.buildErrorStringWidget(errorString: errorStringList[0]),
        CommonWidget.buildPasswordTextFormFiled(
          controller: _passwordController,
          hintText: '비밀번호',
          onChangedValidator: (text) =>
              ref.watch(signUpValidationProvider.notifier).allPasswordCheck(text, _passwordValidationController.text),
        ),
        CommonWidget.buildErrorStringWidget(errorString: errorStringList[1]),
        CommonWidget.buildPasswordConfirmTextFormFiled(
          controller: _passwordValidationController,
          hintText: '비밀번호 확인',
          onChangedValidator: (text) =>
              ref.watch(signUpValidationProvider.notifier).allPasswordCheck(_passwordController.text, text),
        ),
        CommonWidget.buildErrorStringWidget(errorString: errorStringList[2]),
        Row(),
        SizedBox(
          height: 20.h,
        ),
        Column(
            children: List.generate(CheckBoxType.values.length, (index) {
          return buildRowCheckbox(index, CheckBoxType.values[index].title,
              () => GoRouter.of(context).go('/signup/${CheckBoxType.values[index].name}'));
        })),
      ],
    );
  }

  Widget buildRowCheckbox(int index, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          RoundCheckBox(
            key: ValueKey(index),
            onTap: (_) => ref.read(signUpValidationProvider.notifier).toggleCheckBox(index),
            isChecked: ref.watch(signUpValidationProvider.notifier).checkBoxList[index],
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
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  title,
                  style: AppTextStyle.h14.get.copyWith(color: AppColors.textE5E5E5),
                ),
                Icon(
                  FontAwesomeIcons.chevronRight,
                  size: 13.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField(String? errorString) {
    return TextFormField(
      controller: _emailController,
      autovalidateMode: AutovalidateMode.disabled,
      onChanged: (text) => ref.watch(signUpValidationProvider.notifier).checkEmailRegExp(text),
      decoration: InputDecoration(
        hintText: '이메일',
        suffixIcon: AbsorbPointer(
          absorbing: (errorString == null || errorString.isNotEmpty) ? true : false,
          child: Container(
            width: 80.w,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: GestureDetector(
                onTap: () => ref.read(signUpValidationProvider.notifier).duplicationButtonClick(_emailController.text),
                child: Container(
                  width: 72.w,
                  height: 10.h,
                  alignment: Alignment.center,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(color: AppColors.button333333, borderRadius: BorderRadius.circular(26.0)),
                  child: Text(ref.watch(signUpValidationProvider.notifier).valTitle.title, style: AppTextStyle.b14.get),
                ),
              ),
            ),
          ),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}

class InnerButtonModel {
  final String title;
  final VoidCallback onPressed;

  InnerButtonModel({required this.title, required this.onPressed});
}
