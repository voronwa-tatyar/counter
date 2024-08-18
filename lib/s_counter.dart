import 'package:counter/w_display.dart';
import 'package:counter/w_input_pad.dart';
import 'package:counter/w_upper_pad.dart';
import 'package:flutter/material.dart' hide Stack;
import 'package:stack/stack.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  Stack<int> stack = Stack<int>();

  void _incrementCounter(int value) {
    setState(() {
      _counter += value;
      stack.push(value);
    });
  }

  void _decrementCounter() {
    setState(() {
      if (stack.isNotEmpty) {
        int value = stack.pop();
        _counter -= value;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      stack.clear();
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              UpperPad(onTabCallback: _decrementCounter, onLongPressCallback: _resetCounter,),
              // Empty Container to adjust position
              CounterDisplay(counter: _counter),
              InputPad(callback: _incrementCounter)
            ],
          ),
        ),
      ),
    );
  }
}
