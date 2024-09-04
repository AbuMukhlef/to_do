import 'package:flutter/material.dart';
import 'package:getit_with_bloc/core/extension/get_screen_size.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: context.getWidthScreen(width: 0.5)),
            const Text('Name:'),
            const Text('-----'),
            const Text('Age:'),
            const Text('-----'),
            const Text('Email:'),
            const Text('-----'),
            const Text('Phone:'),
            const Text('-----'),
          ],
        ),
      ),
    );
  }
}
