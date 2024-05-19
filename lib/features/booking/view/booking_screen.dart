import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/features/booking/booking.dart';
import 'package:flutter_layout_travel_app/shared/widgets/app_image.dart';
import 'package:flutter_layout_travel_app/shared/widgets/rating.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

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
                  const Text('Lets Book A Tour!',
                      style: TextStyle(
                          color: UIColor.purple,
                          fontSize: 32,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(height: 36),
              Text(
                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                  style: theme.textTheme.bodySmall),
              const SizedBox(height: 12),
              Text('Select a vehical',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.purple)),
              const SizedBox(height: 12),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(children: [
              //       Container(
              //           clipBehavior: Clip.hardEdge,
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(12)),
              //           child: Image.asset('assets/car.png')),
              //       Text('Car')
              //     ]),
              //     Image.asset('assets/car.png'),
              //     Image.asset('assets/car.png')
              //   ],
              // )
              Text('Selected Place',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.purple)),
              const SizedBox(height: 10),
              Stack(children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: const Opacity(
                    opacity: 0.8,
                    child: AppImage(image: 'assets/cultural.png'),
                  ),
                ),

                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selected Place',
                        style: theme.textTheme.titleMedium
                            ?.copyWith(color: Colors.white),
                      ),
                      const Text(
                          'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                          style: TextStyle(color: Colors.white)),
                      const Rating()
                    ],
                  ),
                )

                // const Positioned(
                //     top: 5, left: 10, child: Text('Selected Place')),
                // Positioned(
                //   top: 20,
                //   left: 10,
                //   child: Text(
                //     'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you`re seeking the tranquility visit offers something for every traveler.',
                //   ),
                // ),
                // const Positioned(
                //     bottom: 10, left: 10, right: 10, child: Rating())
              ]),
              const SizedBox(height: 12),
              const DetailsForm(),
            ],
          ),
        ),
      ),
    );
  }
}
