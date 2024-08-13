import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({super.key, required this.callback, required this.number});

  final Function(int) callback;
  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(number),
      child: SizedBox(width: 60, height: 60, child: Center(child: Text('$number', style: const TextStyle(fontSize: 40),))),
    );
  }
}
