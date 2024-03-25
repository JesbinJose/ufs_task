
import 'package:flutter/material.dart';

class CompaniesPart extends StatelessWidget {
  const CompaniesPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          child: Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/company.png'),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
