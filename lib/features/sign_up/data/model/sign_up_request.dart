import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_request.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String email;
  final String password;
  final String phone;
  final String name;
  @JsonKey(name: "password_confirmation")
  final String passwordConfirmation;
  final int gender;


  SignUpRequestBody(
      {required this.phone,required this.name,required this.passwordConfirmation,required this.gender,required this.email, required this.password});
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
