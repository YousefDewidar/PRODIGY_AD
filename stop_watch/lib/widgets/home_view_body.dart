import 'package:flutter/material.dart';
import 'package:stop_watch/widgets/control_buttons.dart';
import 'package:stop_watch/widgets/laps_list_view.dart';
import 'package:stop_watch/widgets/stop_watch_timer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        StopWatchTimer(),
        LapsListView(),
        
        ControlButtons(),
      ],
    );
  }
}
