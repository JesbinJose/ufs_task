import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ValueNotifier<int> tab = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 226, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAppbarPart(tab: tab),
            const SizedBox(height: 20),
            const CardView(),
            const CustomTextMiddle(),
            const CustomTitleText(title: 'Featured Training'),
            const FeaturedCarosal(),
            const CustomTitleText(title: 'Accredition'),
            const CompaniesPart(),
            const SizedBox(height: 30),
            const SecondTitleText(),
            const CustomerSaysPart(),
            const CustomTitleText(title: 'Our Clients'),
            const CompaniesPart(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
