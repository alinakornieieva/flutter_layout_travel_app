import 'package:flutter/material.dart';
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
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset('assets/cultural.png',
                      width: double.infinity, fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 12),
              Text('Fill The Details',
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: UIColor.purple)),
              const SizedBox(height: 12),
              Text('User Name'),
              const SizedBox(height: 6),
              const TextField(
                  cursorColor: UIColor.red,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: UIColor.red)),
                    contentPadding: EdgeInsets.all(8),
                    isCollapsed: true,
                  )),
              Text('Country'),
              const SizedBox(height: 6),
              const TextField(
                  cursorColor: UIColor.red,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: UIColor.red)),
                    contentPadding: EdgeInsets.all(8),
                    isCollapsed: true,
                  )),
              const SizedBox(height: 12),
              Text('Team Size'),
              const SizedBox(height: 12),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: UIColor.purple),
                    width: 78,
                    height: 78,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 46),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
