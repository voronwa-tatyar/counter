import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({super.key, required this.callback, required this.number});
  final Function(int) callback;
  final int number;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(number),
      child: Text('$number'),
    );
  }
}
