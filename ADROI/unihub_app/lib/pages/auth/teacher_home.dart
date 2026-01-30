import 'package:flutter/material.dart';

class TeacherHome extends StatelessWidget {
  const TeacherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Teacher Home',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
