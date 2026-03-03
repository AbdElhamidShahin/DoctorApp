import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/shared_pref_helper.dart';

class DioFactory {
  /// private constractor as I dont want to allow creating an instance of this class

  DioFactory._();

  ///مانع اعمل منه object

  static Dio? dio;
  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30); //وقت الانتظار 30ثانيه
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // 1. جلب التوكن من الذاكرة
          String token = await SharedPrefHelper.getString('userToken');

          // 2. إضافة التوكن للهيدر
          options.headers['Authorization'] = 'Bearer $token';

          // 3. إخبار السيرفر أننا نريد JSON (لتجنب صفحة الـ HTML)
          options.headers['Accept'] = 'application/json';

          return handler.next(options);
        },
      ),
    );
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),

    );
  }
}
