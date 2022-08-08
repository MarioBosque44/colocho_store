import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row - Fila'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: 150.0,
                height: 175.0,
              ),
              Container(
                color: Colors.green,
                width: 150.0,
                height: 175.0,
              ),
              Container(
                color: Colors.red,
                width: 150.0,
                height: 175.0,
              ),
              Container(
                color: Colors.black,
                width: 150.0,
                height: 175.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
