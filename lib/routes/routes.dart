import 'package:flutter/material.dart';
import 'package:payment_dash/constants/constant.dart';
import 'package:payment_dash/routes/routing.dart';
import 'package:payment_dash/screens/dashboard_screen.dart';
import 'package:payment_dash/screens/home_screen.dart';
import 'package:payment_dash/screens/userdetail_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings settings) {
    // var cards = CardModel(cardType: 'cardType', cardNum: 'cardNum', amount: 99, exprd: 'exprd', id: 2);
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.dash:
        return MaterialPageRoute(builder: (_) => const DashScreen());
      case Routes.user:
        return MaterialPageRoute(
            builder: (_) => UserScreen(
                  // cards: cards,
                ));
      default:
        throw 'route not found';
    }
  }
}
