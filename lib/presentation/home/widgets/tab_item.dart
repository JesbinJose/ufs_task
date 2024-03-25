import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTabItem extends StatelessWidget {
  const MyTabItem({
    super.key,
    required this.child,
    required this.isSelected,
    required this.currentTab,
    required this.tabId,
  });
  final (Widget, String) child;
  final bool isSelected;
  final ValueNotifier<int> currentTab;
  final int tabId;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => currentTab.value = tabId,
        child: Column(
          children: [
            child.$1,
            const SizedBox(
              height: 5,
            ),
            Text(
              child.$2,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 9, 2, 89),
              ),
            ),
            Center(
              child: SizedBox(
                height: 10,
                child: Visibility(
                  visible: isSelected,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: 100,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(5),
                      ),
                      color: Colors.amber,
                    ),
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
