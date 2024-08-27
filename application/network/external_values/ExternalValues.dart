import 'package:azz_medical_web/application/network/external_values/iExternalValue.dart';

class ExternalValues implements IExternalValues {
  @override
  String getBaseUrlv1() {
    return 'http://35.84.137.45:4000/v1/';
  }

  @override
  String countriesBaseUrl() {
    return "https://countriesnow.space";
  }

  @override
  String getBaseUrl() {
    return 'http://3.23.104.141:4000';
  }
}
