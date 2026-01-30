import 'package:flutter/material.dart';
import 'routes.dart';
import 'pages/startpage/splash_page.dart';

void main() {
  runApp(const UniHubApp());
}

class UniHubApp extends StatelessWidget {
  const UniHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generate,
      home: const SplashPage(),
    );
  }
}
