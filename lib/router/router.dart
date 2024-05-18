import 'package:flutter_layout_travel_app/features/home/home.dart';
import 'package:flutter_layout_travel_app/features/landmarks/landmarks.dart';
import 'package:flutter_layout_travel_app/features/natural_wonders/natural_wonders.dart';
import 'package:flutter_layout_travel_app/features/nightlife/nightlife.dart';
import 'package:flutter_layout_travel_app/features/cultural/cultural.dart';
import 'package:flutter_layout_travel_app/features/booking/booking.dart';

final routes = {
  '/': (context) => const HomeScreen(),
  '/natural-wonders': (context) => const NaturalWonders(),
  '/nightlife': (context) => const Nightlife(),
  '/landmarks': (context) => const Landmarks(),
  '/cultural': (context) => const Cultural(),
  '/booking': (context) => const Booking()
};
