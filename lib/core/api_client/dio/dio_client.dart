import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_pavan/core/api_client/exception/dio_exceptions.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;
  late Dio dio;
   final logger = Logger(
     printer:  PrettyPrinter(
       methodCount: 0,
       errorMethodCount: 8,
       lineLength: 120,
       colors: true,
       printEmojis: true,
     )
   );

  DioClient._internal(){
    dio = Dio(
      BaseOptions(
        connectTimeout:const Duration(seconds: 10),
        receiveTimeout:const Duration(seconds: 10),
        sendTimeout:  const Duration(seconds: 10),
        headers: {"Accept": "application/json"}
      ),
    );
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) {
          final error = DioExceptions.fromDioError(e);
          logger.i(error);
          handler.reject(e);
        },
      )
    );
  }
}