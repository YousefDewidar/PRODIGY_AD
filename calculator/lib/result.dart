
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.output,
    required this.input,
  });

  final String output;
  final String input;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: const Color.fromARGB(96, 96, 125, 139),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.bottomRight,
        child: Text(
          output.isEmpty ? input : output,
          style: const TextStyle(fontSize: 38.0,color: Colors.white),
        ),
      ),
    );
  }
}
