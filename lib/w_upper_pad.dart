import 'package:flutter/material.dart';

class UpperPad extends StatelessWidget {
  const UpperPad({super.key, required this.onTabCallback, required this.onLongPressCallback});

  final Function() onTabCallback;
  final Function() onLongPressCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTabCallback.call(),
      onLongPress: () => onLongPressCallback.call(),
      child: const Icon(Icons.replay, size: 50,),
    );
  }
}
