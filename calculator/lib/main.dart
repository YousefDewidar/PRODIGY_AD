import 'package:calculator/result.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const CalculatorApp()));
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = "";
  String output = "";

  buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      input = "";
      output = "";
    } else if (buttonText == "=") {
      try {
        Parser p = Parser();
        Expression exp = p.parse(input);
        ContextModel cm = ContextModel();
        double result = exp.evaluate(EvaluationType.REAL, cm);
        output = result.toString();
      } on FormatException {
        output = "Error";
      }
    } else {
      input += buttonText;
    }
    setState(() {});
  }

  ElevatedButton button(String butt) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:  WidgetStatePropertyAll(  butt == '=' ? const Color.fromARGB(237, 243, 60, 60) : Colors.blueGrey ),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
            butt == '=' ? const StadiumBorder() : const CircleBorder()),
        textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 23)),
        minimumSize: WidgetStatePropertyAll(
          butt == '=' ? const Size(160, 80) : const Size(80, 80),
        ),
      ),
      onPressed: () => buttonPressed(butt),
      child: Text(butt),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(202, 37, 37, 37),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(202, 37, 37, 37),
          title: const Center(
              child: Text(
            'Calculator',
            style: TextStyle(color: Color(0xffffffff)),
          )),
        ),
        body: Column(
          children: <Widget>[
            Result(output: output, input: input),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button('AC'),
                      button('%'),
                      button('^'),
                      button('*'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button('7'),
                      button('8'),
                      button('9'),
                      button('/'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button('4'),
                      button('5'),
                      button('6'),
                      button('+'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button('1'),
                      button('2'),
                      button('3'),
                      button('-'),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      button('0'),
                      button('.'),
                      button('='),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
