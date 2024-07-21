import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_state.dart';

class ControlCubit extends Cubit<ControlState> {
  ControlCubit() : super(ControlInitial());
  Stopwatch stopwatch = Stopwatch();

  String getCurTime() {
    emit(ControlDone());

    return '${stopwatch.elapsed.inMinutes}:${stopwatch.elapsed.inSeconds}:${stopwatch.elapsed.inMilliseconds}';
  }

  void stop() {
    emit(ControlDone());
    stopwatch.stop();
  }

  void start() {
    emit(ControlDone());
    stopwatch.start();
  }

  void reset() {
    emit(ControlDone());
    stopwatch.reset();
  }
}
