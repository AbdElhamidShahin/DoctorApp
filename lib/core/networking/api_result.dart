import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed() //بتخلي دارت يفهم ان الكلاس ده هيكون كلاس ثابت ومنظم يحتوي علي اكثر من حاله
abstract class ApiResult<T> with _$ApiResult<T> {
  /// <T>يعني الكلاس ممكن يحتوي علي اي نوع بيانات
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler erorHandler) = Failure<T>;
}
