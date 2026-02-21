import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentations/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: kDebugMode,
      home: HomePage(),
    );
  }
}
