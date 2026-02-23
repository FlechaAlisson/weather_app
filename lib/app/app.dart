import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/navigation/router.dart';
import 'package:weather_app/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weather App',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: kDebugMode,
      routerConfig: router,
    );
  }
}
