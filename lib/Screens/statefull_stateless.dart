import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool roomColorOn = true;
  bool dimlightOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: roomColorOn ? Colors.amber : Colors.black,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    roomColorOn = false;
                  });
                },
                color: dimlightOn ? Colors.blue : Colors.grey,
                iconSize: 40,
                icon: dimlightOn
                    ? Icon(Icons.lightbulb)
                    : Icon(Icons.lightbulb_outline_rounded),
              ),
              Switch(
                  value: dimlightOn,
                  onChanged: (bool value) {
                    setState(() {
                      dimlightOn = !dimlightOn;
                      roomColorOn = !roomColorOn;
                    });
                  }),
              IconButton(
                  onPressed: () {
                    setState(() {
                      roomColorOn = true;
                    });
                  },
                  color: dimlightOn
                      ? Colors.blue
                      : roomColorOn
                          ? Colors.grey
                          : Colors.black,
                  iconSize: 40,
                  icon: dimlightOn
                      ? Icon(Icons.lightbulb)
                      : Icon(Icons.lightbulb_outline_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
