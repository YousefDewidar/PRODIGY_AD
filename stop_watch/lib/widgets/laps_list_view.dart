import 'package:flutter/material.dart';
import 'package:stop_watch/widgets/lap_card.dart';

class LapsListView extends StatelessWidget {
  const LapsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
      width: double.infinity,
      height: 380,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(41, 0, 0, 0),
          borderRadius: BorderRadius.circular(10),
          ),
      child: ListView.builder(
        itemBuilder: (context, index) => const LapCard(),
        itemCount: 5,
        ),
    );
  }
}

