import 'dart:async';

import 'package:azz_medical_web/application/app.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

import 'package:azz_medical_web/application/main_config/main_config.dart' as config;

/// Used for Background Updates using Workmanager Plugin
typedef SetRegisteredRoutes = Route<dynamic> Function(RouteSettings settings);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await config.initMainServiceLocator();


  // const routes = RouteGenerator.generateRoute;
  runApp(const Workout());
}
