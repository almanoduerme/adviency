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
              title: const Text("A D V I E N C Y - D A Y - 0 2"),
              backgroundColor: Colors.green,
              centerTitle: true,
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.red,
            body: const Padding(
              // padding: EdgeInsets.only(top: 12),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              child: Center(
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Gift 01"),
                      tileColor: Colors.yellow,
                      leading: Icon(Icons.redeem),
                    ),
                    SizedBox(height: 12),
                    ListTile(
                      title: Text("Gift 02"),
                      tileColor: Colors.yellow,
                      leading: Icon(Icons.redeem),
                    ),
                    SizedBox(height: 12),
                    ListTile(
                      title: Text("Gift 03"),
                      tileColor: Colors.yellow,
                      leading: Icon(Icons.redeem),
                    ),
                  ],
                ),
              ),
            )));
  }
}
