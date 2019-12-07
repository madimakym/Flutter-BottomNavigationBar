import 'package:flutter/material.dart';

class Third extends StatelessWidget{
  @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Portfolio'),
        // backgroundColor: Colors.,
      ),
      body: Container(
        child: new Center(
          child: new Icon(Icons.favorite, size:150.0, color: Colors.teal),
        ),
      )
    );
  }
}