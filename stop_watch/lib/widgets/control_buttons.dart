import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_cubit.dart';
import 'package:stop_watch/control%20cubit/control_state.dart';
import 'package:stop_watch/widgets/custom_button.dart';

class ControlButtons extends StatelessWidget {
  const ControlButtons({super.key});

  @override
  Widget build(BuildContext context) {
    bool isActive = false;
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
          BlocConsumer<ControlCubit, ControlState>(
            listener: (context, state) {
              if (state is ControlDone) {
                if (BlocProvider.of<ControlCubit>(context).timerr.isActive) {
                  isActive = true;
                } else {
                  isActive = false;
                }
              }
            },
            builder: (context, state) {
              return CustomButton(
                onPressed: () {
                  BlocProvider.of<ControlCubit>(context).start();
                },
                title: isActive ? 'Lap' : 'Start',
                isGO: true,
              );
            },
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
