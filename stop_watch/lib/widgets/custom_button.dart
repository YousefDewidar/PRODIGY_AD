import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.isGO = false,
    this.onPressed,
    required this.title,
  });
  final bool isGO;
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              isGO ? const CircleBorder() : const StadiumBorder()),
          padding: const WidgetStatePropertyAll(EdgeInsets.all(30)),
          backgroundColor: WidgetStatePropertyAll(isGO
              ? const Color.fromARGB(75, 0, 0, 0)
              : const Color.fromARGB(54, 0, 0, 0)),
          shadowColor: WidgetStateColor.transparent,
          foregroundColor:
              const WidgetStatePropertyAll(Color.fromARGB(185, 255, 255, 255))),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
