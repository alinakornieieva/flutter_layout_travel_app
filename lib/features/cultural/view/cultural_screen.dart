import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/shared/widgets/app_image.dart';
import 'package:flutter_layout_travel_app/shared/widgets/custom_text_field.dart';
import 'package:flutter_layout_travel_app/shared/widgets/rating.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

class Cultural extends StatelessWidget {
  const Cultural({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
          child: Column(
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
                  const Text('Cultural',
                      style: TextStyle(
                          color: UIColor.red,
                          fontSize: 32,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 36),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall),
              const SizedBox(height: 20),
              const AppImage(image: 'assets/cultural.png'),
              const SizedBox(height: 20),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall,
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Text('Rate this Place',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.orange)),
              const SizedBox(height: 20),
              const Rating(),
              const SizedBox(height: 20),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall),
              const SizedBox(height: 20),
              Text('Send Feedback',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.orange)),
              const SizedBox(height: 20),
              const CustomTextField(),
              const SizedBox(height: 20),
              Align(
                  alignment: Alignment.topRight,
                  child: OutlinedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.black)),
                          backgroundColor:
                              MaterialStatePropertyAll(UIColor.yellow)),
                      onPressed: () {},
                      child: Text('Submit', style: theme.textTheme.bodyMedium)))
            ],
          ),
        ),
      ),
    );
  }
}
