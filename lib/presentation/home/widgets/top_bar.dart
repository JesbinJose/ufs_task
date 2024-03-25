import 'package:flutter/material.dart';
import 'package:ufs/presentation/home/widgets/tab_view.dart';

class TopAppbarPart extends StatelessWidget {
  const TopAppbarPart({
    super.key,
    required this.tab,
  });

  final ValueNotifier<int> tab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 4, 143, 208),
            Color.fromARGB(255, 164, 226, 255),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () => debugPrint('Menu'),
              icon: const Icon(Icons.menu),
            ),
          ),
          const SizedBox(height: 10,),
          TabView(tab: tab),
        ],
      ),
    );
  }
}
