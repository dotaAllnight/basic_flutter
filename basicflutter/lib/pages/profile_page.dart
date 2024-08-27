import 'package:flutter/material.dart';
import 'package:myapp2/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text('profil')
      ),
      body: const Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/yeah.png'),
          radius:60,

        ),
        SizedBox(height: kDouble20,)
      ],),
    );
  }
}