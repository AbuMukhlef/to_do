import 'package:flutter/material.dart';
import 'package:getit_with_bloc/core/all_file.dart';

Future<dynamic> myBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
          color: const Color.fromARGB(255, 238, 224, 183),
          height: context.getWidthScreen(multipleWidth: 0.9),
          width: double.infinity,
          child: const Column(
            children: [
              MyTextField(
                hintText: 'Write your task here'
              ),
            ],
          )));
}
