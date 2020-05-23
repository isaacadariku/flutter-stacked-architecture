import 'package:get_it/get_it.dart';
import 'package:my_app/services/third_party_services_module.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => CounterService());
}

