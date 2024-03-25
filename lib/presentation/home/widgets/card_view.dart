
import 'package:flutter/material.dart';
import 'package:ufs/presentation/home/widgets/custom_text_card.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyCustomTextCard(
          colors: (
            Color.fromARGB(255, 186, 122, 255),
            Color.fromARGB(255, 226, 62, 255)
          ),
          text: 'Total Training Attended',
          number: 10,
        ),
        MyCustomTextCard(
          colors: (
            Color.fromARGB(255, 235, 142, 251),
            Color.fromARGB(255, 221, 101, 242)
          ),
          text: 'Total Training Attended',
          number: 10,
        ),
      ],
    );
  }
}
