import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/data/local_data_source/jwt/jwt_local_access_token.dart';
import 'package:azz_medical_web/data/local_data_source/preference/i_pref_helper.dart';
import 'package:azz_medical_web/data/local_data_source/preference/pref_helper.dart';
import 'package:azz_medical_web/data/local_data_source/web_storage/i_web_storage_helper.dart';
import 'package:azz_medical_web/data/local_data_source/web_storage/web_storge.dart';

import 'package:azz_medical_web/data/remote_data_source/jwt_remote_access_token.dart';

import 'package:azz_medical_web/data/repo/jwt_access_repo.dart';


import 'package:shared_preferences/shared_preferences.dart';

final inject = GetIt.instance;

Future<void> setupLocator() async {
  inject.registerSingletonAsync(() => SharedPreferences.getInstance());
  inject.registerLazySingleton<JwtLocalAccessToken>(() => JwtLocalAccessToken());
  inject.registerLazySingleton<JwtRemoteAccessToken>(() => JwtRemoteAccessToken(externalValues: ExternalValues()));
  inject.registerLazySingleton<JwtAccessRepo>(() => JwtAccessRepo(jwtLocalAccessToken: inject(), jwtRemoteAccessToken: inject()));
  inject.registerLazySingleton<IApiService>(() => ApiService.create(
      externalValues: ExternalValues(), jwtAccessRepo: inject()));
  inject.registerLazySingleton<Px>(() => Px());
  inject.registerLazySingleton<IPrefHelper>(() => PrefHelper(inject()));
  inject.registerLazySingleton<INavigationService>(() => NavigationService());
}
