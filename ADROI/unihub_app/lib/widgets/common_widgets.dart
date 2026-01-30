import 'package:flutter/material.dart';

class CommonInputLabel extends StatelessWidget {
  final String label;
  const CommonInputLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 4),
        child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
      );
}

class CommonTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  const CommonTextField({super.key, required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) => TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      );
}

class CommonLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CommonLoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: const Text('Đăng nhập'),
        ),
      );
}
