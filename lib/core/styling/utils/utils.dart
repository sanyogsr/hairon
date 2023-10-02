import 'package:flutter/material.dart';
import 'package:hairon/features/appointments/presentation/pages/appointment_screen.dart';
import 'package:hairon/features/discover/presentation/pages/discover_screen.dart';
import 'package:hairon/features/Home/presentation/pages/home_screen.dart';
import 'package:hairon/features/profile/presentation/pages/profile_screen.dart';

List<Widget> homeScreenItems = [
  HomeScreen(),
  DiscoverScreen(),
  AppointmentScreen(),
  ProfileScreen(),
];
