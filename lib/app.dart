import 'package:flutter/material.dart';
import 'package:klock_app/routes.dart';
import 'package:klock_app/ui/screens/login_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.login,
      routes: {
        Routes.login: (context) => const LoginScreen(),
        // 여기에 다른 라우트를 추가합니다.
      },
    );
  }
}
