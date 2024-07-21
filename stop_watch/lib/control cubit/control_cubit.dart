import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_state.dart';
import 'package:stop_watch/model/lap.dart';

class ControlCubit extends Cubit<ControlState> {
  ControlCubit(this.timerr) : super(ControlInitial());
  Stopwatch stopwatch = Stopwatch();
  Timer timerr;
  List lapList = [];

  String formatDuration() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    return "${twoDigits(stopwatch.elapsed.inMinutes % 60)}:${twoDigits(stopwatch.elapsed.inSeconds % 60)}:${twoDigits(stopwatch.elapsed.inMilliseconds % 1000)}";
  }

  void stop() {
    stopwatch.stop();
    timerr.cancel();
    emit(ControlDone());
  }

  void start() {
    if (!timerr.isActive) {
      stopwatch.start();
      timerr = Timer.periodic(
          const Duration(milliseconds: 1), (timer) => emit(ControlDone()));
    } else {
      lapList.add(Lap(title: 'Lap', duration: formatDuration()));
      emit(LapState());
    }
  }

  void reset() {
    stopwatch.reset();
    lapList.clear();
    emit(ControlDone());
    emit(LapState());
  }
}
