import 'package:counter/w_display.dart';
import 'package:counter/w_input_pad.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter(int value) {
    setState(() {
      _counter+=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapDown: (details) => _incrementCounter(1),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(), // Empty Container to adjust position
                CounterDisplay(counter: _counter),
                InputPad(callback: _incrementCounter)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
