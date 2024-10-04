import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maygrowself/2.providers/app_status_provider.dart';
import 'package:maygrowself/98.resources/app_text_style.dart';
import 'package:maygrowself/99.routers/app_router.dart';

import 'flavors.dart';

class App extends ConsumerWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final rt = ref.read(goRouterProvider);
    final appState = ref.watch(appStatusProvider);
    appState.whenData((data)=> print('data!!!!!!!!!!${data.toString()}!!!!!!!!!!!!!!!!!!!!!!!!'));
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.notoSansKr().fontFamily,
      ),
      routerConfig: rt,
      title: F.title,
      theme: ThemeData(
        useMaterial3: true,
        // textTheme: TextTheme(bodyMedium: AppTextStyle.b14.get),
        fontFamily: GoogleFonts.notoSans().fontFamily,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 60,
          surfaceTintColor: Colors.white,
        ),
      ),
      builder: (context, child){
        Widget actualChild = _flavorBanner(
          child: child!,
          show: F.appFlavor != Flavor.prod ? true : false,
        );
        return actualChild;
      },
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
        child: child,
        location: BannerLocation.bottomStart,
        message: F.name,
        color: Colors.green.withOpacity(0.6),
        textStyle: AppTextStyle.b13.get,
        textDirection: TextDirection.ltr,
      )
          : Container(
        child: child,
      );
}
