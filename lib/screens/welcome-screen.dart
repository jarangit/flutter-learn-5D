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
            gradient: LinearGradient(
          colors: [Colors.white, Colors.lightGreen.shade200],
          // ทิศทางของสี
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
        )),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_textHeader(), _textWelcome(), _buttonStart()],
            ),
          ),
        ),
      ),
    );
  }

  //header widget
  Widget _textHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () => "", icon: Icon(Icons.help)),
        TextButton(
            onPressed: () {},
            child: Text(
              "Help",
            )),
        Text(
          "|",
        ),
        TextButton(onPressed: () {}, child: Text("English")),
      ],
    );
  }

  //welcome widget
  Widget _textWelcome() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("welcome"), Text("lorem ipsum lorem ipsum lorem ipsum")],
    );
  }

  //button widget
  Widget _buttonStart() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white),
            child: Text(
              "Get Started",
              style: TextStyle(fontWeight: FontWeight.bold),
            )));
  }
}
