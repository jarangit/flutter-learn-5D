import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black, Colors.black87])),
        child: Column(
          children: [_textHeader(), _textWelcome(), _buttonStart()],
        ),
      ),
    );
  }

  //header widget
  Widget _textHeader() {
    return Row(
      children: [Text("header")],
    );
  }

  //welcome widget
  Widget _textWelcome() {
    return Row(
      children: [Text("welcome")],
    );
  }

  //button widget
  Widget _buttonStart() {
    return SizedBox(
      child: TextButton(
        onPressed: () => print("welcome"),
        child: Text("Get Start"),
      ),
    );
  }
}
