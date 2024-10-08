import 'package:dio/dio.dart';
import 'package:maygrowself/2.providers/secure_storage.dart';
import 'package:maygrowself/5.models/response_entity.dart';
import 'package:maygrowself/flavors.dart';
import 'package:maygrowself/utils/constants.dart';
import 'package:maygrowself/utils/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio getDio(GetDioRef ref) {
  final dio = Dio();
  final options = BaseOptions(
    baseUrl: F.endPoint,
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 10),
  );
  dio.options = options;
  // onRequest -> 성공 -> onResponse
  //                  -> 실패 -> onError -> 토큰 재발급 -> 다시 시작 -> onRequest -> 성공 -> onResponse -> .g serialize -> model return
  dio.interceptors.add(
    QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) async{
        String? storedToken = await ref.read(secureStorageProvider).read(key: ACCESS_TOKEN_KEY);
        logger.w('storedToken: ${storedToken ?? 'null'}');
        if(storedToken != null) {
          options.headers['Authorization'] = 'Bearer $storedToken';
        }
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        if (response.data!['code'] == 200) {
          return handler.next(response);
        }
        // else {
          // final newError = DioException(
          //   requestOptions: response.requestOptions,
          //   response: response,
          //   message: response.data!['message'],
          //   error: response.data!['code'],
          // );
          // // interceptor onError로 전달
          // return handler.reject(newError, true);
        // }
      },
      onError: (DioException err, handler) async {
        print(err.toString());
        print(err.response!.statusCode);
        print(err.response!.data['code'].toString());
        if(err.response != null){
          ResponseEntity exceptionEntity = ResponseEntity.fromJson(err.response!.data, (json) => json);
          print(exceptionEntity.code);
          err.response!.data = exceptionEntity;
          return handler.reject(err);
        }else{
          ResponseEntity exceptionEntity = ResponseEntity(code: 777, message: '이건 진짜 정의되지 않은 오류입니다.', data: {}, timestamp: DateTime.now());
          err.response!.data = exceptionEntity;
          return handler.reject(err);
        }

        //err.error == '401001';

        // if (statusCode == 401 && refreshToken != null) {
        //   try {
        //     // 토큰 재발급
        //     var request = DingdonguApiUserRefreshSignRequest(accessToken: accessToken!, refreshToken: refreshToken);
        //     var result = await tokenClient.signRefresh(request);
        //
        //     if (result.isSuccess) {
        //       err.requestOptions.headers['Authorization'] = 'Bearer ${result.data!.userSign.accessToken}';
        //       // 토큰 저장
        //       ref.read(localRepositoryProvider.notifier).setToken(
        //         token: result.data!.userSign.accessToken,
        //         refreshToken: result.data!.userSign.refreshToken,
        //       );
        //
        //       // api 재호출
        //       return handler.resolve(await dio.fetch(err.requestOptions));
        //     } else {
        //       // throw 전달
        //       return handler.next(err);
        //     }
        //   } on DioException catch (e) {
        //     ref.read(authAsyncNotifierProvider.notifier).refreshTokenExpired();
        //     return handler.reject(e);
        //   }
        // }
        // throw 전달
        return handler.next(err);
      },
    ),
  );
  dio.interceptors.add(CustomLogInterceptor());
  return dio;
}


class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    simpleLogger.i('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    simpleLogger.i('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    simpleLogger.e('ERROR[${err.response!.data['statusCode']}] => ${err.error}: ${err.message}');
    super.onError(err, handler);
  }
}
