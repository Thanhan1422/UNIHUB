import 'package:flutter/material.dart';
import '../../widgets/common_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _role = 0;
  final roles = ['Học sinh', 'Giáo viên', 'Phụ huynh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: List.generate(3, (i) => Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _role = i),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: _role == i ? Colors.blue : Colors.grey.shade300,
                    child: Center(child: Text(roles[i], style: TextStyle(color: _role == i ? Colors.white : Colors.black))),
                  ),
                ),
              )),
            ),
            const SizedBox(height: 30),

            const CommonInputLabel(label: 'Tài khoản'),
            const CommonTextField(hintText: 'Nhập tài khoản'),

            const SizedBox(height: 12),

            const CommonInputLabel(label: 'Mật khẩu'),
            const CommonTextField(hintText: 'Nhập mật khẩu', isPassword: true),

            const SizedBox(height: 24),

            CommonLoginButton(onPressed: () {
              if (_role == 0) Navigator.pushReplacementNamed(context, '/student');
              if (_role == 1) Navigator.pushReplacementNamed(context, '/teacher');
              if (_role == 2) Navigator.pushReplacementNamed(context, '/parent');
            }),
          ],
        ),
      ),
    );
  }
}
