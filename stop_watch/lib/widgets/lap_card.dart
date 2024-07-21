import 'package:flutter/material.dart';
import 'package:stop_watch/model/lap.dart';

class LapCard extends StatelessWidget {
  const LapCard({super.key, required this.lap, required this.index});
  final Lap lap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${lap.title} ${index + 1}',
                style: const TextStyle(fontSize: 23),
              ),
              Text(
                lap.duration.toString(),
                style: const TextStyle(fontSize: 23),
              ),
            ],
          ),
          const Divider(
            color: Color.fromARGB(120, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
