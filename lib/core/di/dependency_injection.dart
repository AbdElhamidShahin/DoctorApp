import 'package:dio/dio.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/core/networking/dio_factory.dart';
import 'package:doctor_app_flutter/features/home/data/apis/home_api_service.dart';
import 'package:doctor_app_flutter/features/home/data/repos/home_repos.dart';
import 'package:doctor_app_flutter/features/home/logic/home_cubit.dart';
import 'package:doctor_app_flutter/features/login/data/repos/repos.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/sign_up/data/repo/sign_up_repos.dart';
import '../../features/sign_up/logic/cubits/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// 1. Dio
  final dio = await DioFactory.getDio();

  /// 2. Api Services (تسجيل الخدمات بشكل منفصل)
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // سجل الـ HomeApiService هنا عشان تستخدمه في الـ Repo بتاعه
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  /// 3. login
  getIt.registerLazySingleton<LoginRepos>(() => LoginRepos(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepos>()));

  /// 4. SignUp (حول الـ Imports لـ Package كما اتفقنا)
  getIt.registerLazySingleton<SignUpRepos>(() => SignUpRepos(getIt<ApiService>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepos>()));

  /// 5. Home
  // هنا نمرر الـ HomeApiService اللي سجلناه فوق
  getIt.registerLazySingleton<HomeRepos>(() => HomeRepos(getIt<HomeApiService>()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepos>()));
}