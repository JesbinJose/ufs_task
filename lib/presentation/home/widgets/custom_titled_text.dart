
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  const CustomTitleText({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromARGB(255, 9, 2, 89),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}