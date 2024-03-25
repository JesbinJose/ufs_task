import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextMiddle extends StatelessWidget {
  const CustomTextMiddle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explore our',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 9, 2, 89),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'various ',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 9, 2, 89),
                ),
              ),
              Text(
                'training',
                style: GoogleFonts.rubikScribble().copyWith(
                  fontSize: 32,
                  color: const Color.fromARGB(255, 9, 2, 89),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
