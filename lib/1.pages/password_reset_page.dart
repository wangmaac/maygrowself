import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maygrowself/97.widgets/common_widget.dart';
import 'package:maygrowself/98.resources/app_colors.dart';

class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({super.key});

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _certificationNumberController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordValidationController;

  String? _emailErrorString;
  String? _certificationNumberErrorString;
  String? _passwordErrorString;
  String? _passwordValidationErrorString;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _certificationNumberController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordValidationController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CommonWidget.buildButton(
              text: '재설정하기',
              textColor: AppColors.text828282,
              onPressed: () {},
              backgroundColor: AppColors.textE5E5E5,
              isFullWidth: true),
          SizedBox(
            height: MediaQuery.of(context).viewPadding.bottom.h,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: CommonWidget.buildLoginFrame(context,
            titleString: '비밀번호 재설정', contentColumn: buildContentColumn(), bottomButton: Column()),
      ),
    );
  }

  Column buildContentColumn() {
    return Column(
      children: [
        CommonWidget.buildErrorStringWidget(errorString: _certificationNumberErrorString),
        CommonWidget.buildTextFormFiled(controller: _passwordController, hintText: '비밀번호'),
        CommonWidget.buildErrorStringWidget(errorString: _passwordErrorString),
        CommonWidget.buildTextFormFiled(controller: _passwordValidationController, hintText: '비밀번호 확인'),
        CommonWidget.buildErrorStringWidget(errorString: _passwordValidationErrorString),
        Row(),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
