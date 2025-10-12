import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/cubit.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routers.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          Loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(color: AppColors.blueMain),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.go(routes.HomeScreen);
          },
          error: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(Icons.error, color: Colors.red, size: 32),

                content: Text(error, style: textStyle15),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Got It",
                      style: textStyle14.copyWith(color: AppColors.blueMain),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
