import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        image,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
