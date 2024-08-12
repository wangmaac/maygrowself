import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';

class UseTermsPage extends StatelessWidget {
  const UseTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          shadowColor: Colors.yellow,
          primary: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(FontAwesomeIcons.xmark, size: 30.w, color: Colors.white),
            ),
          ],
          elevation: 0,
          toolbarHeight: 75,
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 1),
          ),
          title: Text(
            '이용약관',
            style: AppTextStyle.h24.get,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('이용약관'),
        ),
      ),
    );
  }
}
