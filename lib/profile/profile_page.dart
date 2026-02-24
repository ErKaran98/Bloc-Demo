import 'package:bloc_demo/profile/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BlocSelector')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocSelector<ProfileBloc, ProfileState, String>(
              selector: (state) => state.userName,
              builder: (context, username) {
                return Text(
                  'UserName: $username',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 24),
            BlocSelector<ProfileBloc, ProfileState, int>(
              selector: (state) => state.age,
              builder: (context, age) {
                return Text('Age: $age', style: TextStyle(fontSize: 24));
              },
            ),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                context.read<ProfileBloc>().updateUserName('Arjun');
              },
              child: Text('Update UserName'),
            ),
            SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                context.read<ProfileBloc>().updateAge(28);
              },
              child: Text('Update Age'),
            ),
          ],
        ),
      ),
    );
  }
}
