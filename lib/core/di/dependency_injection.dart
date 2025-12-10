import 'package:dio/dio.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/core/networking/dio_factory.dart';
import 'package:doctor_app_flutter/features/login/data/repos/repos.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/sign_up/data/repo/sign_up_repos.dart';
import '../../features/sign_up/logic/cubits/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// dio
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///login
  getIt.registerLazySingleton<LoginRepos>(() => LoginRepos(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  ///SignUp
  getIt.registerLazySingleton<SignUpRepos>(() => SignUpRepos(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));




}

