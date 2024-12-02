import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("A D V I E N C Y - D A Y - 0 1"),
              backgroundColor: Colors.black87,
              centerTitle: true,
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
            body: const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Center(
                child: Column(
                  children: [Text("Gift 01"), Text("Gift 02"), Text("Gift 03")],
                ),
              ),
            )));
  }
}
