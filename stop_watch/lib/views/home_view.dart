import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stop_watch/control%20cubit/control_cubit.dart';
import 'package:stop_watch/widgets/custom_title.dart';
import 'package:stop_watch/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomTitle(),
            BlocProvider(
              create: (context) =>
                  ControlCubit(Timer(Duration.zero, () => print)),
              child: const HomeViewBody(),
            ),
          ],
        ),
      ),
    );
  }
}
