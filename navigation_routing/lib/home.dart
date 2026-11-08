import 'package:flutter/material.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stationery Shopping App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Stationery Shop'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: const Text('View Products'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/profile'),
              child: const Text('View Products (Named Route)'),
            ),
          ],
        ),
      ),
    );
  }
}