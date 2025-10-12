import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:doctor_app_flutter/features/login/data/model/login_request_body.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/cubit.dart';
import 'package:doctor_app_flutter/features/login/ui/wideget/already_have_account_text.dart';
import 'package:doctor_app_flutter/features/login/ui/wideget/app_text_button.dart';
import 'package:doctor_app_flutter/features/login/ui/wideget/email_and_password.dart';
import 'package:doctor_app_flutter/features/login/ui/wideget/login_bloc_listner.dart';
import 'package:doctor_app_flutter/features/login/ui/wideget/terms_and_conditions_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/colors.dart';

class LoginScreen extends StatelessWidget {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Welcome Back",
                  style: textStyle24.copyWith(color: AppColors.blueMain),
                ),
                SizedBox(height: 8.h),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: textStyle14Login,
                ),
                SizedBox(height: 36.h),

                EmailAndPassword(),
                SizedBox(height: 24.h),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "Forgot Password?",
                    style: textStyle13.copyWith(color: AppColors.blueMain),
                  ),
                ),
                SizedBox(height: 40.h),

                AppTextButton(
                  buttonText: "Login",
                  textStyle: textStyle16,
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                SizedBox(height: 24.h),
                TermsAndConditionsText(),

                SizedBox(height: 60.h),
                AlreadyHaveAccountText(),
                const LoginBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(
      LoginRequestBody(
        email: context.read<LoginCubit>().emailController.text,
        password: context.read<LoginCubit>().passwordController.text,
      ),
    );
  }
}
