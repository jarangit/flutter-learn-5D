import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          width: 400.0,
          height: 400.0,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: Colors.pink,
            border: Border.all(width: 5, color: Colors.blue),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => print("home"),
                  icon: Icon(Icons.home),
                ),
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
