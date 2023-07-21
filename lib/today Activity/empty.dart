import 'package:flutter/material.dart';
import 'package:test/utils/AppColors.dart';

class EmptyScreen extends StatefulWidget {
  const EmptyScreen({super.key});

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
          child: Text(
        'Empty Screen',
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}
