import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column - Columna'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.blue,
                height: 175.0,
              ),
              Container(
                color: Colors.green,
                height: 175.0,
              ),
              Container(
                color: Colors.red,
                height: 175.0,
              ),
              Container(
                color: Colors.black,
                height: 175.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
