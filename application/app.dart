import 'package:azz_medical_web/application/main_config/route_2.0/route_generator.dart';
import 'package:azz_medical_web/ui/base/base_mixin.dart';
import 'package:azz_medical_web/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:azz_medical_web/application/core/scroll_behavior.dart';

import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/main.dart';
import 'package:provider/provider.dart';

class Workout extends StatefulWidget {
  final SetRegisteredRoutes? route;

  const Workout({Key? key, this.route}) : super(key: key);

  @override
  State<Workout> createState() => WorkoutState();
}

class WorkoutState extends State<Workout> with BaseMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Workout',
      builder: (context, child) => ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: child ?? const SizedBox(),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
      color: Style.primaryColor,
      theme: AppTheme.buildTheme(),

    );


  }
}
