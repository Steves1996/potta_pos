import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/shared/utils/secure_storage.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => AppRouter())
  ..registerLazySingleton(() => SecureStorage());
