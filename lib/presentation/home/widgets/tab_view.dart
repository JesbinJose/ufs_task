import 'package:flutter/material.dart';
import 'package:ufs/presentation/home/widgets/tab_item.dart';

class TabView extends StatelessWidget {
  const TabView({
    super.key,
    required this.tab,
  });

  final ValueNotifier<int> tab;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: tab,
      builder: (_, v, __) {
        return Row(
          children: [
            MyTabItem(
              child: (
                const Icon(
                  Icons.directions_walk_outlined,
                  color: Color.fromARGB(255, 9, 2, 89),
                ),
                'Training',
              ),
              isSelected: v == 0,
              currentTab: tab,
              tabId: 0,
            ),
            MyTabItem(
              child: (
                const Icon(
                  Icons.auto_graph_outlined,
                  color: Color.fromARGB(255, 9, 2, 89),
                ),
                'Inspection',
              ),
              isSelected: v == 1,
              currentTab: tab,
              tabId: 1,
            ),
            MyTabItem(
              child: (
                const Icon(
                  Icons.settings_suggest_rounded,
                  color: Color.fromARGB(255, 9, 2, 89),
                ),
                'Calibration',
              ),
              isSelected: v == 2,
              currentTab: tab,
              tabId: 2,
            ),
          ],
        );
      },
    );
  }
}
