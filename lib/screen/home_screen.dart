import 'package:flutter/material.dart';
import '../core/all_file.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day Task')),
      body: const Center(
        child: Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
