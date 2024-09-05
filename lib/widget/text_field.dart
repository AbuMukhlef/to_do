import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, this.text, this.controller});
  final String? text;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text ?? ''),
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type here',
            ),
          ),
        ],
      ),
    );
  }
}
