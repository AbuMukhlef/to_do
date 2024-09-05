import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getit_with_bloc/edit_bloc/profile_bloc.dart';
import '../core/all_file.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileBloc>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state is ProfileInitial) {
                  return const Text('Enter Details',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey));
                } else if (state is ChangeNameState) {
                  return Text(bloc.profileGet.profileNameLayer.name.toString(),
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey));
                }
                return const Text('');
              },
            ),
            MyTextField(text: 'Name: ', controller: nameController),
            const MyTextField(text: 'Age: '),
            const MyTextField(text: 'Email: '),
            const MyTextField(text: 'Phone: '),
            SizedBox(height: context.getWidthScreen(multipleWidth: 0.3)),
            ElevatedButton(
                onPressed: () {
                  bloc.add(ChangeNameEvent(name: nameController.text));
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => const PageTwo()));
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
