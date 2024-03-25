import 'package:flutter/material.dart';

class MyCustomTextCard extends StatelessWidget {
  const MyCustomTextCard(
      {super.key,
      required this.colors,
      required this.text,
      required this.number});
  final (Color, Color) colors;
  final String text;
  final int number;

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.sizeOf(context);
    return Container(
      width: s.width * 0.45,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: colors.$2),
        borderRadius: BorderRadius.circular(10),
        color: colors.$1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: s.width * .3,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 9, 2, 89),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.$2,
                ),
                padding: const EdgeInsets.only(bottom: 2),
                child: Center(
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 9, 2, 89),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
