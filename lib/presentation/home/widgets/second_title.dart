
import 'package:flutter/material.dart';

class SecondTitleText extends StatelessWidget {
  const SecondTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, bottom: 15),
      child: Text(
        'See what our customer says',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
