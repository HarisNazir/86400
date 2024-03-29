import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(CountdownApp());

class CountdownApp extends StatefulWidget {
  @override
  _CountdownAppState createState() => _CountdownAppState();
}

class _CountdownAppState extends State<CountdownApp> {
  late Timer _timer;
  int _remainingSeconds = 86400; // Start with 86,400 seconds

  @override
  void initState() {
    super.initState();
    _resetCountdown();
    _startTimer();
  }

  void _resetCountdown() {
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day + 1);
    _remainingSeconds = midnight.difference(now).inSeconds;
    setState(() {}); // Update immediately to ensure the display is correct
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer.cancel();
        _resetCountdown(); // Reset for the next day
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
    String secondsStr = _remainingSeconds.toString();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '\$',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Generate Widgets for each digit with their position
              ...secondsStr.split('').asMap().entries.map((entry) {
                int idx = entry.key;
                String val = entry.value;
                return _animatedDigit(val, idx);
              }).toList(),
            ],
          ),
        ),
      ),
    );
}



  Widget _animatedDigit(String digit, int position) {
  return AnimatedSwitcher(
    duration: const Duration(milliseconds: 150),
    transitionBuilder: (Widget child, Animation<double> animation) {
      return FadeTransition(opacity: animation, child: child);
    },
    // The key now includes both the digit and its position
    child: Text(
      digit,
      key: ValueKey<String>('$digit$position'),
      style: TextStyle(
        color: Colors.white,
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
}
