import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medilink/core/networking/api_service.dart';
import 'package:medilink/features/login/data/repos/login_repo.dart';
import 'package:medilink/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );
  getIt.registerSingleton<LoginRepo>(
    LoginRepo(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<LoginCubit>(
    LoginCubit(
      getIt.get<LoginRepo>(),
    ),
  );
}
