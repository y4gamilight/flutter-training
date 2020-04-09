
import 'package:get_it/get_it.dart';
import 'package:sample_provider/core/services/api.dart';
import 'package:sample_provider/core/services/authenticate_service.dart';
import 'package:sample_provider/core/services/login_service.dart';
import 'package:sample_provider/core/services/user_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() { 
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => AuthenticationService);
  
  locator.registerLazySingleton(() => LoginService());
  locator.registerLazySingleton(() => UserService());
  
}