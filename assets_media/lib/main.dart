import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final places = [
      ['Ooty', 'assets/images/ooty.png'],
      ['Kodaikanal', 'assets/images/kodaikanal.png'],
      ['Kanyakumari', 'assets/images/kanyakumari.png'],
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Tamil Nadu Tourism Gallery')),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: places.map((place) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(place[1], fit: BoxFit.cover),
                ),
                Text(place[0]),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}