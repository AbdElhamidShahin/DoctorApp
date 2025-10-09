import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {
  final String email;
  final String passWord;

  LoginRequestBody({required this.email, required this.passWord});
  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);
}
