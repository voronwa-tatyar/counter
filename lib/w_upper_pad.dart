import 'package:flutter/material.dart';

class UpperPad extends StatelessWidget {
  const UpperPad({super.key, required this.callback});

  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback.call(),
      child: const Icon(Icons.replay, size: 50,),
    );
  }
}
