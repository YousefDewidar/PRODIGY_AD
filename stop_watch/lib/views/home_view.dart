import 'package:flutter/material.dart';
import 'package:stop_watch/widgets/custom_title.dart';
import 'package:stop_watch/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTitle(),
            HomeViewBody(),
          ],
        ),
      ),
    );
  }
}
