import 'package:flutter/material.dart';
import 'package:klock_app/ui/screens/home_screen.dart';
import 'package:klock_app/ui/screens/login_screen.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.home,
      routes: {
        Routes.login: (context) => const LoginScreen(),
        Routes.home: (context) => const HomeScreen(),
      },
    );
  }
}
