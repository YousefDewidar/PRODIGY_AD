import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_cubit.dart';
import 'package:stop_watch/control%20cubit/control_state.dart';
import 'package:stop_watch/widgets/lap_card.dart';

class LapsListView extends StatefulWidget {
  const LapsListView({
    super.key,
  });

  @override
  State<LapsListView> createState() => _LapsListViewState();
}

class _LapsListViewState extends State<LapsListView> {
  List lapList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      width: double.infinity,
      height: 380,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(41, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocListener<ControlCubit, ControlState>(
        listener: (context, state) {
          if (state is LapState) {
            lapList = BlocProvider.of<ControlCubit>(context).lapList;
            setState(() {});
          }
        },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return LapCard(lap: lapList[index], index: index);
          },
          itemCount: lapList.length,
        ),
      ),
    );
  }
}
