// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextPrint extends StatelessWidget {
  final String textData;
  final double size;

  // ignore: use_key_in_widget_constructors
  const TextPrint(this.textData, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      textData,
      style: TextStyle(fontSize: size),
    );
  }
}
