import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(child: Text('Hello Everyone!')),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/unicorn.jpg'),
          ),
        ),
      ),
    ),
  );
}
