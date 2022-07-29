import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Colocho Store"),
      ),
      body: const Center(
        child: Text(
          "Hola Mundo",
        ),
      ),
    );
  }
}
