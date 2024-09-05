import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getit_with_bloc/core/extension/get_screen_size.dart';
import 'package:getit_with_bloc/edit_bloc/profile_bloc.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileBloc>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: context.getWidthScreen(multipleWidth: 0.4)),
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
