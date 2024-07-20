import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch/views/home_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const StopWatchApp()));
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const HomeView(),
    );
  }
}
