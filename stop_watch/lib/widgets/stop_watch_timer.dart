import 'package:flutter/material.dart';

class StopWatchTimer extends StatelessWidget {
  const StopWatchTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40.0,bottom: 60),
      child: Text(
        '00:00:00',
        style: TextStyle(fontSize: 70, fontWeight: FontWeight.w700),
      ),
    );
  }
}