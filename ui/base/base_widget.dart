import 'package:flutter/material.dart';
import 'package:azz_medical_web/ui/base/base_mixin.dart';

abstract class BaseStateFullWidget extends StatefulWidget with BaseMixin {
  BaseStateFullWidget({Key? key}) : super(key: key);
}

abstract class BaseStateLessWidget extends StatelessWidget with BaseMixin {
  BaseStateLessWidget({Key? key}) : super(key: key);
}
