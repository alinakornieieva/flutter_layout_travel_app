import 'package:flutter/material.dart';

class NaturalWonders extends StatelessWidget {
  const NaturalWonders({super.key});

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
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text('Natural Wonders')
            ],
          ),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
          SizedBox(height: 36),
          Text('Nature Wonders Place-1'),
          SizedBox(height: 12),
          Image.asset('assets/nature2.png'),
          SizedBox(height: 12),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
          SizedBox(height: 36),
          Text('Nature Wonders Place-2'),
          SizedBox(height: 12),
          Image.asset('assets/nature1.png'),
          SizedBox(height: 12),
          Text(
              'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
              style: theme.textTheme.bodySmall),
        ],
      ),
    )));
  }
}
