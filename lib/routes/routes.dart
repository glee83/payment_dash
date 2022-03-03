import 'package:flutter/material.dart';
import 'package:payment_dash/routes/routing.dart';
import 'package:payment_dash/screens/dashboard_screen.dart';
import 'package:payment_dash/screens/home_screen.dart';
import 'package:payment_dash/screens/userdetail_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.dash:
        return MaterialPageRoute(builder: (_) => const DashScreen());
      case Routes.user:
        return MaterialPageRoute(builder: (_) => const UserScreen());
      default:
        throw 'route not found';
    }
  }
}
