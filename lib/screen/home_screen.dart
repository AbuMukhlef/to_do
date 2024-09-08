import 'package:flutter/material.dart';
import 'package:getit_with_bloc/core/extension/get_screen_size.dart';

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
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                  color: Colors.amber,
                  height: context.getWidthScreen(multipleWidth: 0.9),
                  width: double.infinity,
                  child: const Text('Hello')));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
