import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/presentations/pages/home_shell.dart';
import 'package:weather_app/features/location/presentation/pages/location_page.dart';
import 'package:weather_app/features/settings/presentation/pages/setting_page.dart';
import 'package:weather_app/features/weather/presentation/pages/weather_page.dart';

final router = GoRouter(
  initialLocation: '/weather',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return HomeShell(child: child);
      },
      routes: [
        GoRoute(
          path: '/weather',
          pageBuilder: (_, __) => const NoTransitionPage(child: WeatherPage()),
        ),
        GoRoute(
          path: '/location',
          pageBuilder: (_, __) => const NoTransitionPage(child: LocationPage()),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (_, __) => const NoTransitionPage(child: SettingPage()),
        ),
      ],
    ),
  ],
);
