import 'package:flutter/material.dart';

class ListPhoto extends StatelessWidget {
  final String photo;
  const ListPhoto({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        photo,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
