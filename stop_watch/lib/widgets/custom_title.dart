
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'StopWatch',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 26, fontWeight: FontWeight.w700, height: .3),
    );
  }
}
