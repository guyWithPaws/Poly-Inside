import 'package:flutter/material.dart';
import 'package:poly_inside/src/feature/profile/profile.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage()
    );
  }
}