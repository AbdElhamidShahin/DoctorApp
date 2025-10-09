import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

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
      PrettyDioLogger(
        //بتعرض شكل requst بتاع الكود
        requestBody: true, //يعرض بيانات الطلب
        requestHeader: true, //يعرض الرد
        responseHeader: true, //يسهل عليك تشوف الأخطاء
      ),
    );
  }
}
