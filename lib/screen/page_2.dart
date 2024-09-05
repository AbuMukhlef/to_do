import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getit_with_bloc/core/extension/get_screen_size.dart';
import 'package:getit_with_bloc/edit_bloc/profile_bloc.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            final bloc = context.read<ProfileBloc>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: context.getWidthScreen(multipleWidth: 0.4)),
                const Text('Name:'),
                Text(bloc.profileGet.profileNameLayer.name ?? '-----'),
                const Text('Age:'),
                Text(bloc.profileGet.profileNameLayer.name ?? '-----'),
                const Text('Email:'),
                Text(bloc.profileGet.profileNameLayer.name ?? '-----'),
                const Text('Phone:'),
                Text(bloc.profileGet.profileNameLayer.name ?? '-----'),
              ],
            );
          },
        ),
      ),
    );
  }
}
