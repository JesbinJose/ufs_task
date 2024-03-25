import 'package:flutter/material.dart';
import 'package:ufs/presentation/home/widgets/customer_says_tile.dart';

class CustomerSaysPart extends StatelessWidget {
  const CustomerSaysPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          CustomerSaysTile(
            image: 'assets/person.jpg',
            companyName: 'cargomatic',
            data:
                'Contary to popular belief ,Lorem ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC',
            name: 'Jerin Thomas',
            position: 'CEO & CO-FOUNDER OF ARABTEC',
          ),
          CustomerSaysTile(
            image: 'assets/person.jpg',
            companyName: 'cargomatic',
            data:
                'Contary to popular belief ,Lorem ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC',
            name: 'Jerin Thomas',
            position: 'CEO & CO-FOUNDER OF ARABTEC',
          ),
          CustomerSaysTile(
            image: 'assets/person.jpg',
            companyName: 'cargomatic',
            data:
                'Contary to popular belief ,Lorem ipsum is not simply random text.It has roots in a piece of classical Latin literature from 45 BC',
            name: 'Jerin Thomas',
            position: 'CEO & CO-FOUNDER OF ARABTEC',
          ),
        ],
      ),
    );
  }
}
