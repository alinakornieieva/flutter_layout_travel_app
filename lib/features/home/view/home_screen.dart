import 'package:flutter/material.dart';

import '../../../uikit/ui_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0, right: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Awesome',
                              style: TextStyle(
                                  color: Color(0xFF6E7A76), fontSize: 20)),
                          Text('Places',
                              style: TextStyle(
                                  color: UIColor.purple,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: UIColor.purple),
                        width: 45,
                        height: 45,
                      )
                    ]),
              ),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall),
              const SizedBox(height: 45.0),
              Image.asset(
                'assets/image_1.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 25.0),
              const Text('Select a Place from the categories',
                  style: TextStyle(
                      color: UIColor.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 14.0),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 14,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: (1 / 0.75),
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: UIColor.lightPurple),
                      height: 112,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/natural-wonders');
                        },
                        child: Center(
                            child: Text('Natural Wonders',
                                style: theme.textTheme.bodyMedium)),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: UIColor.lightPurple),
                      height: 112,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/nightlife');
                        },
                        child: Center(
                            child: Text('Nightlife',
                                style: theme.textTheme.bodyMedium)),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFC2D9FF)),
                      height: 112,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/landmarks');
                        },
                        child: Center(
                            child: Text('Landmarks',
                                style: theme.textTheme.bodyMedium)),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFC2D9FF)),
                      height: 112,
                      child: Center(
                          child: Text('Cultural',
                              style: theme.textTheme.bodyMedium))),
                ],
              ),
              const SizedBox(height: 14),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFFFFE500)),
                  height: 112,
                  width: double.infinity,
                  child: Center(
                      child: Text('Book For A Ride Today!',
                          style: theme.textTheme.bodyMedium)))
            ],
          ),
        ),
      ),
    );
  }
}
