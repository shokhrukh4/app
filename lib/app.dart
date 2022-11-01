import 'package:flutter/material.dart';
import 'package:rent_app/app_navigator/app_navigator.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppNavigator.routes,
      initialRoute: AppNavigator.initalRoute,
    );
  }
}
