import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/logger/log.dart';
import 'i_pref_helper.dart';

class PrefHelper implements IPrefHelper {
  late final SharedPreferences _pref;

  PrefHelper(SharedPreferences preferences) : _pref = preferences;

  final String tokenNo = 'TokenNo';

  @override
  String? retrieveToken() {
    if (_pref.containsKey("userToken")) {
      return _pref.getString("userToken");
    } else {
      return null;
    }
  }

  @override
  void saveToken(value) {
    d("userToken => $value");
    _pref.setString("userToken", value);
  }

  @override
  void clear() {
    _pref.clear();
  }

  @override
  SharedPreferences get() {
    return _pref;
  }

  @override
  void removeToken() {
    _pref.remove('userToken');
  }

  @override
  void removeUser() {
    _pref.remove('user_data');
  }

  @override
  retrieveUser() {
    if (_pref.containsKey("user_data")) {
      Map<String, dynamic> jsonData =
          json.decode(_pref.getString("user_data")!);
      d("RETERIVED USER $jsonData");
      return jsonData;
    } else {
      return null;
    }
  }

  @override
  void saveUser(res) {
    _pref.setString("user_data", json.encode(res.toJson()));
  }

  @override
  bool? getBool(String key) {
    if (_pref.containsKey(key)) {
      return _pref.getBool(key);
    }
    return null;
  }

  @override
  void saveBool(String key, bool value) {
    _pref.setBool(key, value);
  }

  ///set  token number
  @override
  int? getTokenNO() => _pref.getInt(tokenNo);

  @override
  void setTokenNo() {
    int count = 0;
    count= _pref.getInt(tokenNo) ?? 0;
   /// check getToken is 9999 , if 9999 then it will become a 0;
      if(count == 9999){
        count= 0;
        _pref.setInt(tokenNo, count);
      }else{
        /// increment  token
        count++;
        _pref.setInt(tokenNo, count);
      }


  }

  @override
  Map<String, dynamic>? getJson(String key) {
    final data = _pref.getString(key);
    if (data != null) {
      return jsonDecode(data);
    }
    return null;
  }

  @override
  void saveJson(Map data, String key) {
    _pref.setString(key, jsonEncode(data));
  }

  @override
  int? getInt(String key) {
    return _pref.getInt(key);
  }

  @override
  Future<void> setInt(String key, int value) async {
    await _pref.setInt(key, value);
  }

  String? getEMDRBlstSound() {
    if (_pref.containsKey("EMDRBlstSound")) {
      return _pref.getString("EMDRBlstSound");
    } else {
      return null;
    }
  }

  @override
  String? getEMDRSleepSound() {
    if (_pref.containsKey("EMDRSleepSound")) {
      return _pref.getString("EMDRSleepSound");
    } else {
      return null;
    }
  }

  @override
  String? getEMDRVisualSound() {
    if (_pref.containsKey("EMDRVisualSound")) {
      return _pref.getString("EMDRVisualSound");
    } else {
      return null;
    }
  }

  @override
  setEMDRBlstSound(String sound) {
    _pref.setString("EMDRBlstSound", sound);
  }

  @override
  setEMDRSleepSound(String sound) {
    _pref.setString("EMDRSleepSound", sound);
  }

  @override
  setEMDRVisualSound(String sound) {
    _pref.setString("EMDRVisualSound", sound);
  }

  @override
  void saveRefreshToken(value) {
    _pref.setString("userRefreshToken", value);
  }

  @override
  String? retrieveRefreshToken() {
    if (_pref.containsKey("userRefreshToken")) {
      return _pref.getString("userRefreshToken");
    } else {
      return null;
    }
  }
}
