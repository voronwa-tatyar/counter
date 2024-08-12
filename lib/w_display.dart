import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: const TextStyle(fontSize: 70),
    );
  }
}
