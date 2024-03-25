import 'package:flutter/material.dart';
import 'package:ufs/presentation/home/widgets/training_tile.dart';

class FeaturedCarosal extends StatelessWidget {
  const FeaturedCarosal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 270,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              TrainingTile(
                title: 'Zipline Training',
                subTitle:
                    'Experience the ultimate thrill with our Zipline Training program',
                price: '1600',
              ),
              TrainingTile(
                title: 'Climbing Training',
                subTitle:
                    'Experience the ultimate thrill with our Climbing Training program',
                price: '1300',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(5),
            value: 1 / 3,
            backgroundColor: Colors.white,
            color: Colors.amber,
          ),
        ),
      ],
    );
  }
}
