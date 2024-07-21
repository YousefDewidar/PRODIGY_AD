import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_cubit.dart';
import 'package:stop_watch/widgets/custom_button.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            onPressed: () {
              BlocProvider.of<ControlCubit>(context).stop();
            },
            title: 'Stop',
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<ControlCubit>(context).start();
            },
            title: 'Start',
            isGO: true,
          ),
          CustomButton(
            onPressed: () {
              BlocProvider.of<ControlCubit>(context).reset();
            },
            title: 'Reset',
          ),
        ],
      ),
    );
  }
}
