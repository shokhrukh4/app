import 'package:flutter/material.dart';
import 'package:rent_app/components/drawer_screen_body.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DrawerScreenBody(),
    );
  }
}
