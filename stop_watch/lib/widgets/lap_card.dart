import 'package:flutter/material.dart';

class LapCard extends StatelessWidget {
  const LapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lap 1',
                style: TextStyle(fontSize: 23),
              ),
              Text(
                '00:00:00',
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
          Divider(
            color: Color.fromARGB(120, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
