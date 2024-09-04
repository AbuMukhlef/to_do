import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  const TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
      ),
    );
  }
}
