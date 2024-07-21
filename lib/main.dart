import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
    // 상태 표시줄 배경색
    statusBarIconBrightness: Brightness.light,
    // 아이콘 색상 (다크 모드 => Brightness.light, 라이트 모드 => Brightness.dark)
    systemNavigationBarColor: Colors.black,
    // 내비게이션 바 색상
    systemNavigationBarIconBrightness: Brightness.light, // 내비게이션 바 아이콘 색상
  ));
  runApp(ProviderScope(
    child: ScreenUtilInit(
        designSize: Size(390, 882.48), builder: (context, _) => App()),
    observers: [
      // RiverpodObserver(),
    ],
    overrides: [
      // ignore: scoped_providers_should_specify_dependencies
      // sharedPreferencesProvider.overrideWithValue(prefs),
    ],
  ));
}
