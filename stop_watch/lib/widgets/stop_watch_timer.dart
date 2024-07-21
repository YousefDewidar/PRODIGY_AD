import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_cubit.dart';
import 'package:stop_watch/control%20cubit/control_state.dart';

class StopWatchTimer extends StatefulWidget {
  const StopWatchTimer({
    super.key,
  });

  @override
  State<StopWatchTimer> createState() => _StopWatchTimerState();
}

class _StopWatchTimerState extends State<StopWatchTimer> {
  String curTime = '00:00:00';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 60),
      child: BlocListener<ControlCubit, ControlState>(
        listener: (context, state) {
          print(BlocProvider.of<ControlCubit>(context).getCurTime());
          if (state is ControlDone) {
            curTime = BlocProvider.of<ControlCubit>(context).getCurTime();
          }
        },
        child: Text(
          curTime,
          style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
