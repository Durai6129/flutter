import 'package:flutter/material.dart';
import 'details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: Column(
        children: [
          const ListTile(title: Text('Notebook - Rs.50')),
          const ListTile(title: Text('Pen - Rs.10')),
          const ListTile(title: Text('Pencil - Rs.5')),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
            child: const Text('More Details'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}