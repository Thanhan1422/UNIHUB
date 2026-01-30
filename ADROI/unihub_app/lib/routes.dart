import 'package:flutter/material.dart';

import 'pages/auth/login_page.dart';
import 'pages/auth/student_home.dart';
import 'pages/auth/teacher_home.dart';
import 'pages/auth/parent_home.dart';

class AppRoutes {
  static const login = '/login';
  static const student = '/student';
  static const teacher = '/teacher';
  static const parent = '/parent';

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case student:
        return MaterialPageRoute(builder: (_) => const StudentHome());
      case teacher:
        return MaterialPageRoute(builder: (_) => const TeacherHome());
      case parent:
        return MaterialPageRoute(builder: (_) => const ParentHome());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
