import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MagicBoost',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenue sur MagicBoost'),
        ),
        body: Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
#fin
