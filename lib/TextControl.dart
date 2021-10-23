// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeFn;
  final String btLabel;

  // ignore: use_key_in_widget_constructors
  const TextControl(this.changeFn, this.btLabel);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: changeFn, child: Text(btLabel));
  }
}
