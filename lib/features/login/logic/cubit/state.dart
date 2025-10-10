import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@Freezed()
class LoginState<T> with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.Loading() = Loading;
  const factory LoginState.error({required String error}) = Error;
}
