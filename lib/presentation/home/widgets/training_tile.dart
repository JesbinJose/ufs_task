
import 'package:flutter/material.dart';

class TrainingTile extends StatelessWidget {
  const TrainingTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
  });
  final String title;
  final String subTitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 250,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/dubai.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 10,
                child: Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            width: 150,
            child: Text(
              subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.only(
              right: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                  width: 90,
                  height: 40,
                  child: const Center(
                    child: Text(
                      'Take a look',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Text(
                  'AED',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
