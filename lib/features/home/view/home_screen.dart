import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/features/home/home.dart';
import 'package:flutter_layout_travel_app/shared/widgets/widgets.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

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
              const MainText(),
              const SizedBox(height: 45.0),
              const AppImage(image: 'assets/image_1.png'),
              const SizedBox(height: 25.0),
              const Text('Select a Place from the categories',
                  style: TextStyle(
                      color: UIColor.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 14),
              const Categories(),
              const SizedBox(height: 14),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: UIColor.yellow),
                  height: 112,
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/booking');
                    },
                    child: Center(
                        child: Text('Book For A Ride Today!',
                            style: theme.textTheme.bodyMedium)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
