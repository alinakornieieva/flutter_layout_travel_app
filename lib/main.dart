import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        textTheme: TextTheme(
            titleMedium:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            bodyMedium:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            bodySmall: TextStyle(
                fontSize: 15,
                color: const Color(0xFF3B3636).withOpacity(0.75))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}
