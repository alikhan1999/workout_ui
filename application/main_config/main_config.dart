import 'package:azz_medical_web/di/di.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initMainServiceLocator() async {
  await setupLocator();
  return serviceLocator.allReady();
}
