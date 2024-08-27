
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefHelper {
  String? retrieveToken();
  void saveToken(value);
  void removeToken();
  void saveBool(String key, bool value);
  bool?  getBool(String key);
  void saveUser(var verificationModel);
  retrieveUser();
  void removeUser();
  void saveRefreshToken(value);
  String? retrieveRefreshToken();

  Future<void> setInt(String key,int value);
  int? getInt(String key);

  SharedPreferences get();
  void clear();

  Map<String,dynamic>?  getJson(String key);
  void saveJson(Map<dynamic,dynamic> data,String key);
  void setTokenNo ();
  int? getTokenNO ();


  setEMDRBlstSound(String sound);
  String? getEMDRBlstSound();
  setEMDRVisualSound(String sound);
  String? getEMDRVisualSound();
  setEMDRSleepSound(String sound);
  String? getEMDRSleepSound();

}
