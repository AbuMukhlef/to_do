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
            const Text('Enter Details',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey)),
            const MyTextField(text: 'Name: '),
            const MyTextField(text: 'Age: '),
            const MyTextField(text: 'Email: '),
            const MyTextField(text: 'Phone: '),
            SizedBox(height: context.getWidthScreen(multipleWidth: 0.3)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PageTwo()));
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
