
import 'package:flutter/material.dart';

class CustomerSaysTile extends StatelessWidget {
  const CustomerSaysTile({
    super.key,
    required this.image,
    required this.companyName,
    required this.data,
    required this.name,
    required this.position,
  });
  final String image;
  final String companyName;
  final String data;
  final String name;
  final String position;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 180,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(125, 158, 158, 158),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 25,
                ),
                const Icon(
                  Icons.euro_symbol_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  companyName,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 106, 105, 105),
                    fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(
                  width: 210,
                  child: Text(
                    data,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.blue[900],
                      width: 2,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style:const  TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          position,
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
