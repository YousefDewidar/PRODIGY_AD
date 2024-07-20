
import 'package:flutter/material.dart';
import 'package:stop_watch/widgets/custom_button.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50.0,left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            title: 'Stop',
          ),
          CustomButton(
            title: 'Start',
            isGO: true,
          ),
          CustomButton(
            title: 'Pause',
          ),
        ],
      ),
    );
  }
}
