import 'package:flutter/material.dart';
import 'package:rent_app/components/main_home_body.dart';
import 'package:rent_app/pages/drawer_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomePageBody(),
        ],
      ),
    );
  }
}
