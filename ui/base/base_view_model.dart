import 'package:flutter/foundation.dart';
import 'package:azz_medical_web/ui/base/base_mixin.dart';

class  BaseViewModel extends ChangeNotifier with BaseMixin {
  @protected
  void setState() => notifyListeners();
}
