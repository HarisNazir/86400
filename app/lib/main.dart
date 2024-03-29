import 'package:flutter/material.dart';
import 'countdown.dart'; // Make sure this path is correct

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countdown App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountdownApp(), // This matches the widget name in countdown.dart
    );
  }
}
