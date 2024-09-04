import 'package:flutter/material.dart';
import '../core/all_file.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyTextField(),
            const MyTextField(),
            const MyTextField(),
            const MyTextField(),
            const MyTextField(),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PageTwo()));
            }, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
