// Remove the void main() => runApp(CountdownApp()); line
import 'dart:async';
import 'package:flutter/material.dart';

// CountdownApp remains unchanged, no need to have a standalone runApp here.
class CountdownApp extends StatefulWidget {
  @override
  _CountdownAppState createState() => _CountdownAppState();
}

class _CountdownAppState extends State<CountdownApp> {
  late Timer _timer;
  late int _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _resetCountdown();
    _startTimer();
  }

  void _resetCountdown() {
    final now = DateTime.now();
    final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
    _remainingSeconds = endOfDay.difference(now).inSeconds;
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _resetCountdown();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            '$_remainingSeconds',
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );
  }
}
