import 'package:counter/w_input_button.dart';
import 'package:flutter/material.dart';

class InputPad extends StatelessWidget {
  const InputPad({super.key, required this.callback});

  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InputButton( callback: callback, number: 1),
      InputButton( callback: callback, number: 2),
      InputButton( callback: callback, number: 3),
      InputButton( callback: callback, number: 4),
      InputButton( callback: callback, number: 5),
    ]);
  }
}
