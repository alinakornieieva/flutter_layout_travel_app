import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/shared/widgets/widgets.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

class Nightlife extends StatelessWidget {
  const Nightlife({super.key});

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
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, size: 21),
              ),
              const SizedBox(width: 5),
              const Text('Nightlife',
                  style: TextStyle(
                      color: UIColor.orange,
                      fontSize: 32,
                      fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 36),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
          const SizedBox(height: 36),
          Text('Nature Wonders Place-1',
              style: TextStyle(
                  color: UIColor.orange.withOpacity(0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const AppImage(image: 'assets/night2.png'),
          const SizedBox(height: 12),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
          const SizedBox(height: 36),
          Text('Nature Wonders Place-2',
              style: TextStyle(
                  color: UIColor.orange.withOpacity(0.5),
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const AppImage(image: 'assets/night1.png'),
          const SizedBox(height: 12),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
        ],
      ),
    )));
  }
}
