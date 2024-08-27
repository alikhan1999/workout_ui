// import 'dart:html';
// import 'dart:html';

import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/data/local_data_source/web_storage/i_web_storage_helper.dart';

class WebStorage implements IWebStorageHelper {
  // late final SharedPreferences _pref;
  // late final Document _localStorage ;
  //
  // WebStorage(Document localStorage) :_localStorage = localStorage;


  // {
      // final data ;
      // d(data);
    // _localStorage = localStorage = window.document;
  // }

  // 2592000 sec = 30 days.
  final double  maxAge = 2592000;
  final String counterKey= "CounterKey";


  @override
  void resetCounter() {
    // _localStorage.cookie = "$counterKey=0; max-age=$maxAge; path=/;";
  }


  ///set  token number

  @override
  void setToken() {
    // 2592000 sec = 30 days.

    int count = 0;
    count= int.parse(getCookie());
    /// check getToken is 9999 , if 9999 then it will become a 0;
    if(count == 9999){
      count= 0;
      // _localStorage.cookie = "$counterKey=$count; max-age=$maxAge; path=/;";
    }else{
      /// increment  token
      count++;
      // _localStorage.cookie = "$counterKey=$count; max-age=$maxAge; path=/;";

    }

  }




  @override
  String getCookie() {
    // String cookies = _localStorage.cookie ?? '';
    // List<String> listValues = cookies.isNotEmpty ? cookies.split(";") : [];
    // String matchVal = "";
    // for (int i = 0; i < listValues.length; i++) {
    //   List<String> map = listValues[i].split("=");
    //   String _key = map[0].trim();
    //   String _val = map[1].trim();
    //   if (counterKey == _key) {
    //     matchVal = _val;
    //     break;
    //   }
    // }
    return "";
  }



}