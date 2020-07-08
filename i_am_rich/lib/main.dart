import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
       home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('I am Rich')),
            backgroundColor: Colors.pink,
          ),
          backgroundColor: Colors.pink[50],
          body: Center(
            child: Image(
              image:
                  NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
              ),
            ),
          ),
       ),
    );
}
