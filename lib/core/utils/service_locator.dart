import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
}
