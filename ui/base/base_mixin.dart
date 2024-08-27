import 'package:azz_medical_web/constant/constants.dart';
import 'package:azz_medical_web/di/di.dart';
import 'package:azz_medical_web/services/navService/i_navigation_service.dart';

import '../../data/local_data_source/preference/i_pref_helper.dart';

mixin BaseMixin {
  final INavigationService _navigator = inject<INavigationService>();
  final Px _dimens = inject<Px>();
  final IPrefHelper iPrefHelper = inject<IPrefHelper>();
  INavigationService get navigator => _navigator;
  Px get dimens => _dimens;
}
