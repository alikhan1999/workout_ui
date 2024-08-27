
import 'package:shared_preferences/shared_preferences.dart';

abstract class IWebStorageHelper {

  void resetCounter();
  void setToken();
  String getCookie();

}
