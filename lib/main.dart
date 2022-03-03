import 'package:flutter/material.dart';
import 'package:payment_dash/routes/routes.dart';

import 'routes/routing.dart';

void main() {
  runApp(MyApp(route: AppRoute()));
}

class MyApp extends StatelessWidget {
  AppRoute route;
  MyApp({
    Key? key,
    required this.route,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.home,
      onGenerateRoute: route.onGenerateRoute,
    );
  }
}
