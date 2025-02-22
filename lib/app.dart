import 'package:flutter/material.dart';
import 'package:login_design3/features/auth/screens/login/login_page.dart';
import 'package:login_design3/features/auth/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/onboarding',

      routes: {
        '/login': (context) => LoginPage(),
        '/onboarding': (context) => Onboarding(),
      },
    );
  }
}
