import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
              Image.asset('assets/cultural.png',
                  width: double.infinity, fit: BoxFit.fill),
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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6),
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: UIColor.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ),
              const SizedBox(height: 20),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall),
              const SizedBox(height: 20),
              Text('Send Feedback',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.orange)),
              const SizedBox(height: 20),
              const TextField(
                  cursorColor: UIColor.red,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: UIColor.red)),
                    contentPadding: EdgeInsets.all(8),
                    isCollapsed: true,
                  )),
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
