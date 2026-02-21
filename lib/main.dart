import 'package:flutter/material.dart';
import 'package:weather_app/app/app.dart';
import 'package:weather_app/core/di/injector.dart';

void main() {
  initDependencies();
  runApp(const App());
}
