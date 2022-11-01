import 'package:flutter/material.dart';
import 'package:rent_app/app_navigator/app_routes.dart';
import 'package:rent_app/pages/details_screen.dart';
import 'package:rent_app/pages/home_page.dart';

class AppNavigator {
  static String get initalRoute => AppRoutes.home;

  static Map<String, WidgetBuilder> get routes => {
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.details: (context) => const DetailsScreen(),
      };
}
