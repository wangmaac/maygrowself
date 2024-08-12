import 'package:flutter/material.dart';
import 'package:maygrowself/1.pages/login_page.dart';
import 'package:maygrowself/1.pages/main_page.dart';
import 'package:maygrowself/1.pages/password_reset_page.dart';
import 'package:maygrowself/1.pages/sign_up_page.dart';
import 'package:maygrowself/1.pages/terms/personal_terms.dart';
import 'package:maygrowself/1.pages/terms/use_terms.dart';
import 'package:maygrowself/99.routers/router_util.dart';
import 'package:maygrowself/nav_observer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    observers: <NavigatorObserver>[
      NavObserver(),
      // FirebaseAnalyticsObserver(analytics: analytics),
    ],
    debugLogDiagnostics: true,
    initialLocation: AppPath.login.toPath,
    routes: [
      GoRoute(
        path: AppPath.login.toPath,
        name: AppPath.login.toName,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: Builder(
              builder: (context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                  child: const LoginPage(),
                );
              },
            ),
          );
        },
      ),
      GoRoute(
        path: AppPath.main.toPath,
        name: AppPath.main.toName,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: Builder(
              builder: (context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                  child: const MainPage(),
                );
              },
            ),
          );
        },
      ),
      GoRoute(
        path: AppPath.passwordReset.toPath,
        name: AppPath.passwordReset.toName,
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: Builder(
              builder: (context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                  child: const PasswordResetPage(),
                );
              },
            ),
          );
        },
      ),
      GoRoute(
          path: AppPath.signup.toPath,
          name: AppPath.signup.toName,
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: Builder(
                builder: (context) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                    child: const SignUpPage(),
                  );
                },
              ),
            );
          },
          routes: [
            GoRoute(
                path: AppPath.useTerm.toName,
                name: AppPath.useTerm.toName,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    key: state.pageKey,
                    child: Builder(
                      builder: (context) {
                        return MediaQuery(
                          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                          child: const UseTermsPage(),
                        );
                      },
                    ),
                  );
                }),
            GoRoute(
                path: AppPath.personalTerm.toName,
                name: AppPath.personalTerm.toName,
                pageBuilder: (context, state) {
                  return MaterialPage(
                    key: state.pageKey,
                    child: Builder(
                      builder: (context) {
                        return MediaQuery(
                          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.1)),
                          child: const PersonalTermPage(),
                        );
                      },
                    ),
                  );
                }),
          ]),
    ],
    errorPageBuilder: (_, state) {
      return MaterialPage(
          key: state.pageKey,
          child: const Center(
              child: Text('Router Error Page')) /* CustomErrorScreen(
            error: state.error,
          ),*/
          );
    },
    redirect: (BuildContext context, GoRouterState goState) async {
      // final auth = await ref.read(authUserProvider.future);

/*
      String? accessToken = await ref.read(secureStorageProvider).readData('accessToken');
      String? refreshToken = await ref.read(secureStorageProvider).readData('refreshToken');

      print(accessToken);
      print(refreshToken);
*/

      // if (auth.authStatus == AuthStates.authenticated) {
      //   return const HomeRoute().location;
      // }

      // print(auth.authStatus);
      // print(auth.authStatus);

      // pathTracker.push(goState.uri.toString());
      //
      // // network 상태 체크
      // final networkState = await Connectivity().checkConnectivity();
      // if (networkState == ConnectivityResult.none) {
      //   currentAuth = AuthStates.networkDisconnected; // network error 발생 시 초기화
      //   return const NetworkDisconnectedScreenRoute().location;
      // }
      //
      // final auth = ref.read(authAsyncNotifierProvider);
      //
      // if (auth.isLoading || auth.hasError) return null;
      // final authState = auth.value;
      //
      // if (authState == currentAuth) {
      //   currentAuth = authState;
      //   return null;
      // }
      //
      // currentAuth = authState;
      // final isSignUpEventOpened = ref.read(localRepositoryProvider).getIsSignUpEventOpened();
      //
      // // if (authState == AuthStates.version) {
      // //   return const VersionScreenRoute().location;
      // // }
      // if (authState == AuthStates.authenticated) {
      //   return const HomeRoute().location;
      // }
      //
      // if (authState == AuthStates.unAuthenticated) {
      //   // TODO auth 추가 시 주석 해제
      //   return const LoginScreenRoute().location;
      // }

      return null;
    },
  );
}
